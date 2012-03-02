/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "org_xmlvm_iphone_NSOperation.h"

@implementation NSOperation (cat_org_xmlvm_iphone_NSOperation)

-(org_xmlvm_iphone_NSOperation*) init__{
	return [self init];
}   

-(void) start__{
	[self start];
} 

-(void) main__{

}

-(void) main{
	[self main__];
}

-(void) cancel__{
	[self cancel];
}  

-(BOOL) isCancelled__{
	return [self isCancelled];
}
  
-(BOOL) isExecuting__{
	return [self isExecuting];
}
 
-(BOOL) isFinished__{
	return [self isFinished];
}

-(BOOL) isConcurrent__{
	return [self isConcurrent];
}

-(BOOL) isReady__{
	return [self isReady];
}
 
-(void) addDependency___org_xmlvm_iphone_NSOperation:(org_xmlvm_iphone_NSOperation*) operation{
	[self addDependency:operation];
}

-(void) removeDependency___org_xmlvm_iphone_NSOperation:(org_xmlvm_iphone_NSOperation*) operation{
	[self removeDependency:operation];
}

-(java_util_ArrayList*) getDependencies__{
	return [self dependencies];
}
  
-(int) getQueuePriority__{
	return [self queuePriority];
}

-(void) setQueuePriority___int:(int) priority{
	[self setQueuePriority:priority];
}
   
-(double) getThreadPriority__{
	return [self threadPriority];
}

-(void) setThreadPriority___double:(double) priority{
	[self setThreadPriority:priority];
}

-(void) waitUntilFinished__{
	[self waitUntilFinished];
}

@end
