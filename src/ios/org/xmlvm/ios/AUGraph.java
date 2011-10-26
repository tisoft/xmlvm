package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AUGraph {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AUGraph() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus AUGraphAddNode( AUGraph inGraph, const AudioComponentDescription * inDescription, AUNode * outNode) ;
	 */
	public int addNode(Reference<AudioComponentDescription> inDescription, int[] outNode){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphRemoveNode( AUGraph inGraph, AUNode inNode) ;
	 */
	public int removeNode(int inNode){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNodeCount(AUGraph inGraph, UInt32 *outNumberOfNodes) ;
	 */
	public int getNodeCount(int[] outNumberOfNodes){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetIndNode( AUGraph inGraph, UInt32 inIndex, AUNode *outNode) ;
	 */
	public int getIndNode(int inIndex, int[] outNode){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphNodeInfo( AUGraph inGraph, AUNode inNode, AudioComponentDescription * outDescription, AudioUnit * outAudioUnit) ;
	 */
	public int nodeInfo(int inNode, Reference<AudioComponentDescription> outDescription, Reference<ComponentInstanceRecord> outAudioUnit){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphNewNodeSubGraph( AUGraph inGraph, AUNode *outNode) ;
	 */
	public int newNodeSubGraph(int[] outNode){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNodeInfoSubGraph( const AUGraph inGraph, AUNode inNode, AUGraph *outSubGraph) ;
	 */
	public int getNodeInfoSubGraph(int inNode, AUGraph outSubGraph){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphIsNodeSubGraph( const AUGraph inGraph, AUNode inNode, Boolean* outFlag) ;
	 */
	public int isNodeSubGraph(int inNode, byte[] outFlag){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphConnectNodeInput( AUGraph inGraph, AUNode inSourceNode, UInt32 inSourceOutputNumber, AUNode inDestNode, UInt32 inDestInputNumber) ;
	 */
	public int connectNodeInput(int inSourceNode, int inSourceOutputNumber, int inDestNode, int inDestInputNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphSetNodeInputCallback (AUGraph inGraph, AUNode inDestNode, UInt32 inDestInputNumber, const AURenderCallbackStruct * inInputCallback) ;
	 */
	public int setNodeInputCallback(int inDestNode, int inDestInputNumber, Reference<AURenderCallbackStruct> inInputCallback){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphDisconnectNodeInput( AUGraph inGraph, AUNode inDestNode, UInt32 inDestInputNumber) ;
	 */
	public int disconnectNodeInput(int inDestNode, int inDestInputNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphClearConnections( AUGraph inGraph) ;
	 */
	public int clearConnections(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNumberOfInteractions( AUGraph inGraph, UInt32 * outNumInteractions) ;
	 */
	public int getNumberOfInteractions(int[] outNumInteractions){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetInteractionInfo( AUGraph inGraph, UInt32 inInteractionIndex, AUNodeInteraction * outInteraction) ;
	 */
	public int getInteractionInfo(int inInteractionIndex, Reference<AUNodeInteraction> outInteraction){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphCountNodeInteractions( AUGraph inGraph, AUNode inNode, UInt32 * outNumInteractions) ;
	 */
	public int countNodeInteractions(int inNode, int[] outNumInteractions){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNodeInteractions( AUGraph inGraph, AUNode inNode, UInt32 * ioNumInteractions, AUNodeInteraction * outInteractions) ;
	 */
	public int getNodeInteractions(int inNode, int[] ioNumInteractions, Reference<AUNodeInteraction> outInteractions){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphUpdate( AUGraph inGraph, Boolean *outIsUpdated) ;
	 */
	public int update(byte[] outIsUpdated){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphOpen( AUGraph inGraph) ;
	 */
	public int open(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphClose( AUGraph inGraph) ;
	 */
	public int close(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphInitialize( AUGraph inGraph) ;
	 */
	public int initialize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphUninitialize( AUGraph inGraph) ;
	 */
	public int uninitialize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphStart( AUGraph inGraph) ;
	 */
	public int start(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphStop( AUGraph inGraph) ;
	 */
	public int stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphIsOpen( AUGraph inGraph, Boolean *outIsOpen) ;
	 */
	public int isOpen(byte[] outIsOpen){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphIsInitialized( AUGraph inGraph, Boolean *outIsInitialized) ;
	 */
	public int isInitialized(byte[] outIsInitialized){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphIsRunning( AUGraph inGraph, Boolean *outIsRunning) ;
	 */
	public int isRunning(byte[] outIsRunning){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetCPULoad( AUGraph inGraph, Float32 *outAverageCPULoad) ;
	 */
	public int getCPULoad(float[] outAverageCPULoad){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetMaxCPULoad( AUGraph inGraph, Float32 *outMaxLoad) ;
	 */
	public int getMaxCPULoad(float[] outMaxLoad){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphAddRenderNotify( AUGraph inGraph, AURenderCallback inCallback, void *inRefCon) ;
	 */
	public int addRenderNotify(Object inCallback, byte[] inRefCon){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphRemoveRenderNotify( AUGraph inGraph, AURenderCallback inCallback, void *inRefCon) ;
	 */
	public int removeRenderNotify(Object inCallback, byte[] inRefCon){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphNewNode( AUGraph inGraph, const struct ComponentDescription *inDescription, UInt32 inClassDataSize, const void *inClassData, AUNode *outNode) ;
	 */
	public int newNode(ComponentDescription inDescription, int inClassDataSize, byte[] inClassData, int[] outNode){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNodeInfo( AUGraph inGraph, AUNode inNode, struct ComponentDescription *outDescription, UInt32 *outClassDataSize, void **outClassData, AudioUnit *outAudioUnit) ;
	 */
	public int getNodeInfo(int inNode, ComponentDescription outDescription, int[] outClassDataSize, byte[][] outClassData, Reference<ComponentInstanceRecord> outAudioUnit){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNumberOfConnections( AUGraph inGraph, UInt32 *outNumConnections) ;
	 */
	public int getNumberOfConnections(int[] outNumConnections){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetConnectionInfo( AUGraph inGraph, UInt32 inConnectionIndex, AUNode *outSourceNode, UInt32 *outSourceOutputNumber, AUNode *outDestNode, UInt32 *outDestInputNumber) ;
	 */
	public int getConnectionInfo(int inConnectionIndex, int[] outSourceNode, int[] outSourceOutputNumber, int[] outDestNode, int[] outDestInputNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphCountNodeConnections( AUGraph inGraph, AUNode inNode, UInt32 *outNumConnections) ;
	 */
	public int countNodeConnections(int inNode, int[] outNumConnections){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AUGraphGetNodeConnections( AUGraph inGraph, AUNode inNode, AudioUnitNodeConnection *outConnections, UInt32 *ioNumConnections) ;
	 */
	public int getNodeConnections(int inNode, Reference<AudioUnitNodeConnection> outConnections, int[] ioNumConnections){
		throw new RuntimeException("Stub");
	}
}
