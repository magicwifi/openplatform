class NodeMcusController < ApplicationController
  def ping
    render :text => NodeMcu.ping(params)
  end
 
   def show
      node = NodeMcu.find_by_mac(params[:gw_mac])
      if node.running?
    	render :text => 'running'
      else
    	render :text =>  'down'
      end 
   end

   def detail
      node = NodeMcu.find_by_mac(params[:gw_mac])
      if node.running?
      	value = node.start+rand(node.random)
    	render :json => {:code => value}
      else
    	render :json => {:code => 0}
      end 
   end

   def sample
    sump =  (rand+191).round(2)
    ambientTemp = (rand+76).round(2)
    ambientPressure = (rand+1011).round(2)
    pumpFlowRate = 0.37
    operationState = 'RUN PARAMS'
    render :json => {:startStopSwitch => 'ON' ,:sump => sump, :ambientTemp => ambientTemp, :ambientPressure=>ambientPressure, :pumpFlowRate=>pumpFlowRate, :operationState=>operationState }
   end

   def alldetail
      node_list = []
      nodes = NodeMcu.all
      nodes.each do |node|
        if node.running?
      		value = node.start+rand(node.random)
    		node_list <<{:code => value,:mac=>node.mac,:voltage=>node.voltage}
        else
    		node_list <<{:code => 0,:mac=>node.mac,:voltage=>0}
      	end
      end 
    	render :json => { :node_list => node_list }
   end
end
