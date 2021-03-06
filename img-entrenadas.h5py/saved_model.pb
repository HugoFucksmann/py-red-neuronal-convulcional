??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
l
Adagrad/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdagrad/iter
e
 Adagrad/iter/Read/ReadVariableOpReadVariableOpAdagrad/iter*
_output_shapes
: *
dtype0	
n
Adagrad/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdagrad/decay
g
!Adagrad/decay/Read/ReadVariableOpReadVariableOpAdagrad/decay*
_output_shapes
: *
dtype0
~
Adagrad/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdagrad/learning_rate
w
)Adagrad/learning_rate/Read/ReadVariableOpReadVariableOpAdagrad/learning_rate*
_output_shapes
: *
dtype0
?
module_wrapper_3/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?& *.
shared_namemodule_wrapper_3/dense/kernel
?
1module_wrapper_3/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_3/dense/kernel*
_output_shapes
:	?& *
dtype0
?
module_wrapper_3/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namemodule_wrapper_3/dense/bias
?
/module_wrapper_3/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_3/dense/bias*
_output_shapes
: *
dtype0
?
module_wrapper_6/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*0
shared_name!module_wrapper_6/dense_1/kernel
?
3module_wrapper_6/dense_1/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_6/dense_1/kernel*
_output_shapes

: 
*
dtype0
?
module_wrapper_6/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namemodule_wrapper_6/dense_1/bias
?
1module_wrapper_6/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_6/dense_1/bias*
_output_shapes
:
*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
!Adagrad/conv2d/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adagrad/conv2d/kernel/accumulator
?
5Adagrad/conv2d/kernel/accumulator/Read/ReadVariableOpReadVariableOp!Adagrad/conv2d/kernel/accumulator*&
_output_shapes
: *
dtype0
?
Adagrad/conv2d/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adagrad/conv2d/bias/accumulator
?
3Adagrad/conv2d/bias/accumulator/Read/ReadVariableOpReadVariableOpAdagrad/conv2d/bias/accumulator*
_output_shapes
: *
dtype0
?
1Adagrad/module_wrapper_3/dense/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?& *B
shared_name31Adagrad/module_wrapper_3/dense/kernel/accumulator
?
EAdagrad/module_wrapper_3/dense/kernel/accumulator/Read/ReadVariableOpReadVariableOp1Adagrad/module_wrapper_3/dense/kernel/accumulator*
_output_shapes
:	?& *
dtype0
?
/Adagrad/module_wrapper_3/dense/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/Adagrad/module_wrapper_3/dense/bias/accumulator
?
CAdagrad/module_wrapper_3/dense/bias/accumulator/Read/ReadVariableOpReadVariableOp/Adagrad/module_wrapper_3/dense/bias/accumulator*
_output_shapes
: *
dtype0
?
3Adagrad/module_wrapper_6/dense_1/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*D
shared_name53Adagrad/module_wrapper_6/dense_1/kernel/accumulator
?
GAdagrad/module_wrapper_6/dense_1/kernel/accumulator/Read/ReadVariableOpReadVariableOp3Adagrad/module_wrapper_6/dense_1/kernel/accumulator*
_output_shapes

: 
*
dtype0
?
1Adagrad/module_wrapper_6/dense_1/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31Adagrad/module_wrapper_6/dense_1/bias/accumulator
?
EAdagrad/module_wrapper_6/dense_1/bias/accumulator/Read/ReadVariableOpReadVariableOp1Adagrad/module_wrapper_6/dense_1/bias/accumulator*
_output_shapes
:
*
dtype0

NoOpNoOp
?=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
_
_module
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
_
_module
 	variables
!trainable_variables
"regularization_losses
#	keras_api
_
$_module
%	variables
&trainable_variables
'regularization_losses
(	keras_api
_
)_module
*	variables
+trainable_variables
,regularization_losses
-	keras_api
_
._module
/	variables
0trainable_variables
1regularization_losses
2	keras_api
_
3_module
4	variables
5trainable_variables
6regularization_losses
7	keras_api
_
8_module
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?
=iter
	>decay
?learning_rateaccumulator?accumulator?@accumulator?Aaccumulator?Baccumulator?Caccumulator?
*
0
1
@2
A3
B4
C5
*
0
1
@2
A3
B4
C5
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
R
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
 
 
 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
R
\trainable_variables
]regularization_losses
^	variables
_	keras_api
 
 
 
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
 	variables
!trainable_variables
"regularization_losses
R
etrainable_variables
fregularization_losses
g	variables
h	keras_api
 
 
 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
h

@kernel
Abias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api

@0
A1

@0
A1
 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
*	variables
+trainable_variables
,regularization_losses
R
wtrainable_variables
xregularization_losses
y	variables
z	keras_api
 
 
 
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
l

Bkernel
Cbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api

B0
C1

B0
C1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
KI
VARIABLE_VALUEAdagrad/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEAdagrad/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEAdagrad/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmodule_wrapper_3/dense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEmodule_wrapper_3/dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmodule_wrapper_6/dense_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmodule_wrapper_6/dense_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8

?0
?1
 
 
 
 
 
 
 
 
 
 
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
Ntrainable_variables
Oregularization_losses
P	variables
?non_trainable_variables
 
 
 
 
 
 
 
 
 
 
 
 
 
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
\trainable_variables
]regularization_losses
^	variables
?non_trainable_variables
 
 
 
 
 
 
 
 
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
etrainable_variables
fregularization_losses
g	variables
?non_trainable_variables
 
 
 
 
 

@0
A1
 

@0
A1
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
ntrainable_variables
oregularization_losses
p	variables
?non_trainable_variables
 
 
 
 
 
 
 
 
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
wtrainable_variables
xregularization_losses
y	variables
?non_trainable_variables
 
 
 
 
 
 
 
 
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?	variables
?non_trainable_variables
 
 
 
 
 

B0
C1
 

B0
C1
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?	variables
?non_trainable_variables
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE!Adagrad/conv2d/kernel/accumulator\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdagrad/conv2d/bias/accumulatorZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adagrad/module_wrapper_3/dense/kernel/accumulatorLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adagrad/module_wrapper_3/dense/bias/accumulatorLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adagrad/module_wrapper_6/dense_1/kernel/accumulatorLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adagrad/module_wrapper_6/dense_1/bias/accumulatorLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasmodule_wrapper_3/dense/kernelmodule_wrapper_3/dense/biasmodule_wrapper_6/dense_1/kernelmodule_wrapper_6/dense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_24627
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp Adagrad/iter/Read/ReadVariableOp!Adagrad/decay/Read/ReadVariableOp)Adagrad/learning_rate/Read/ReadVariableOp1module_wrapper_3/dense/kernel/Read/ReadVariableOp/module_wrapper_3/dense/bias/Read/ReadVariableOp3module_wrapper_6/dense_1/kernel/Read/ReadVariableOp1module_wrapper_6/dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp5Adagrad/conv2d/kernel/accumulator/Read/ReadVariableOp3Adagrad/conv2d/bias/accumulator/Read/ReadVariableOpEAdagrad/module_wrapper_3/dense/kernel/accumulator/Read/ReadVariableOpCAdagrad/module_wrapper_3/dense/bias/accumulator/Read/ReadVariableOpGAdagrad/module_wrapper_6/dense_1/kernel/accumulator/Read/ReadVariableOpEAdagrad/module_wrapper_6/dense_1/bias/accumulator/Read/ReadVariableOpConst* 
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_25049
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasAdagrad/iterAdagrad/decayAdagrad/learning_ratemodule_wrapper_3/dense/kernelmodule_wrapper_3/dense/biasmodule_wrapper_6/dense_1/kernelmodule_wrapper_6/dense_1/biastotalcounttotal_1count_1!Adagrad/conv2d/kernel/accumulatorAdagrad/conv2d/bias/accumulator1Adagrad/module_wrapper_3/dense/kernel/accumulator/Adagrad/module_wrapper_3/dense/bias/accumulator3Adagrad/module_wrapper_6/dense_1/kernel/accumulator1Adagrad/module_wrapper_6/dense_1/bias/accumulator*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_25116??
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24225

args_0
identityk
leaky_re_lu/LeakyRelu	LeakyReluargs_0*/
_output_shapes
:????????? *
alpha%???=s
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?	
?
*__inference_sequential_layer_call_fn_24645

inputs!
unknown: 
	unknown_0: 
	unknown_1:	?& 
	unknown_2: 
	unknown_3: 

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24810

args_0
identity^
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:????????? i
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
J
.__inference_module_wrapper_layer_call_fn_24765

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24467h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24929

args_0
identity?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @x
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? M
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? c
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_2_layer_call_fn_24827

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24246a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24770

args_0
identityk
leaky_re_lu/LeakyRelu	LeakyReluargs_0*/
_output_shapes
:????????? *
alpha%???=s
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
i
0__inference_module_wrapper_5_layer_call_fn_24912

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_24214

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24194

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_24780

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24194?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?P
?
!__inference__traced_restore_25116
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: )
assignvariableop_2_adagrad_iter:	 *
 assignvariableop_3_adagrad_decay: 2
(assignvariableop_4_adagrad_learning_rate: C
0assignvariableop_5_module_wrapper_3_dense_kernel:	?& <
.assignvariableop_6_module_wrapper_3_dense_bias: D
2assignvariableop_7_module_wrapper_6_dense_1_kernel: 
>
0assignvariableop_8_module_wrapper_6_dense_1_bias:
"
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: O
5assignvariableop_13_adagrad_conv2d_kernel_accumulator: A
3assignvariableop_14_adagrad_conv2d_bias_accumulator: X
Eassignvariableop_15_adagrad_module_wrapper_3_dense_kernel_accumulator:	?& Q
Cassignvariableop_16_adagrad_module_wrapper_3_dense_bias_accumulator: Y
Gassignvariableop_17_adagrad_module_wrapper_6_dense_1_kernel_accumulator: 
S
Eassignvariableop_18_adagrad_module_wrapper_6_dense_1_bias_accumulator:

identity_20??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adagrad_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_adagrad_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp(assignvariableop_4_adagrad_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp0assignvariableop_5_module_wrapper_3_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_module_wrapper_3_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_module_wrapper_6_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_module_wrapper_6_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp5assignvariableop_13_adagrad_conv2d_kernel_accumulatorIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp3assignvariableop_14_adagrad_conv2d_bias_accumulatorIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpEassignvariableop_15_adagrad_module_wrapper_3_dense_kernel_accumulatorIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpCassignvariableop_16_adagrad_module_wrapper_3_dense_bias_accumulatorIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpGassignvariableop_17_adagrad_module_wrapper_6_dense_1_kernel_accumulatorIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpEassignvariableop_18_adagrad_module_wrapper_6_dense_1_bias_accumulatorIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
*__inference_sequential_layer_call_fn_24556
conv2d_input!
unknown: 
	unknown_0: 
	unknown_1:	?& 
	unknown_2: 
	unknown_3: 

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24524o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?
j
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24446

args_0
identity?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @|
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:????????? K
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? ?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? ?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24377

args_0
identitye
leaky_re_lu_1/LeakyRelu	LeakyReluargs_0*'
_output_shapes
:????????? *
alpha%???=m
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24269

args_0
identitye
leaky_re_lu_1/LeakyRelu	LeakyReluargs_0*'
_output_shapes
:????????? *
alpha%???=m
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?(
?
E__inference_sequential_layer_call_and_return_conditional_losses_24692

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: H
5module_wrapper_3_dense_matmul_readvariableop_resource:	?& D
6module_wrapper_3_dense_biasadd_readvariableop_resource: I
7module_wrapper_6_dense_1_matmul_readvariableop_resource: 
F
8module_wrapper_6_dense_1_biasadd_readvariableop_resource:

identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?-module_wrapper_3/dense/BiasAdd/ReadVariableOp?,module_wrapper_3/dense/MatMul/ReadVariableOp?/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_6/dense_1/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$module_wrapper/leaky_re_lu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*/
_output_shapes
:????????? *
alpha%???=?
max_pooling2d/MaxPoolMaxPool2module_wrapper/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
!module_wrapper_1/dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? o
module_wrapper_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
 module_wrapper_2/flatten/ReshapeReshape*module_wrapper_1/dropout/Identity:output:0'module_wrapper_2/flatten/Const:output:0*
T0*(
_output_shapes
:??????????&?
,module_wrapper_3/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_3_dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0?
module_wrapper_3/dense/MatMulMatMul)module_wrapper_2/flatten/Reshape:output:04module_wrapper_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
-module_wrapper_3/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
module_wrapper_3/dense/BiasAddBiasAdd'module_wrapper_3/dense/MatMul:product:05module_wrapper_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(module_wrapper_4/leaky_re_lu_1/LeakyRelu	LeakyRelu'module_wrapper_3/dense/BiasAdd:output:0*'
_output_shapes
:????????? *
alpha%???=?
#module_wrapper_5/dropout_1/IdentityIdentity6module_wrapper_4/leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? ?
.module_wrapper_6/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_6_dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
module_wrapper_6/dense_1/MatMulMatMul,module_wrapper_5/dropout_1/Identity:output:06module_wrapper_6/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
/module_wrapper_6/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_6_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
 module_wrapper_6/dense_1/BiasAddBiasAdd)module_wrapper_6/dense_1/MatMul:product:07module_wrapper_6/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
 module_wrapper_6/dense_1/SoftmaxSoftmax)module_wrapper_6/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
y
IdentityIdentity*module_wrapper_6/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp.^module_wrapper_3/dense/BiasAdd/ReadVariableOp-^module_wrapper_3/dense/MatMul/ReadVariableOp0^module_wrapper_6/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_6/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2^
-module_wrapper_3/dense/BiasAdd/ReadVariableOp-module_wrapper_3/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_3/dense/MatMul/ReadVariableOp,module_wrapper_3/dense/MatMul/ReadVariableOp2b
/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_6/dense_1/MatMul/ReadVariableOp.module_wrapper_6/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24790

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24258

args_07
$dense_matmul_readvariableop_resource:	?& 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_4_layer_call_fn_24887

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24269`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24334

args_08
&dense_1_matmul_readvariableop_resource: 
5
'dense_1_biasadd_readvariableop_resource:

identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24775

args_0
identityk
leaky_re_lu/LeakyRelu	LeakyReluargs_0*/
_output_shapes
:????????? *
alpha%???=s
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
#__inference_signature_wrapper_24627
conv2d_input!
unknown: 
	unknown_0: 
	unknown_1:	?& 
	unknown_2: 
	unknown_3: 

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_24185o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?
g
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24844

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????&a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24795

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24958

args_08
&dense_1_matmul_readvariableop_resource: 
5
'dense_1_biasadd_readvariableop_resource:

identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24897

args_0
identitye
leaky_re_lu_1/LeakyRelu	LeakyReluargs_0*'
_output_shapes
:????????? *
alpha%???=m
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_4_layer_call_fn_24892

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24377`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_3_layer_call_fn_24853

args_0
unknown:	?& 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24258o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24902

args_0
identitye
leaky_re_lu_1/LeakyRelu	LeakyReluargs_0*'
_output_shapes
:????????? *
alpha%???=m
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24467

args_0
identityk
leaky_re_lu/LeakyRelu	LeakyReluargs_0*/
_output_shapes
:????????? *
alpha%???=s
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24361

args_0
identity?\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @x
dropout_1/dropout/MulMulargs_0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? M
dropout_1/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? c
IdentityIdentitydropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
I
-__inference_max_pooling2d_layer_call_fn_24785

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24276

args_0
identityX
dropout_1/IdentityIdentityargs_0*
T0*'
_output_shapes
:????????? c
IdentityIdentitydropout_1/Identity:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_6_layer_call_fn_24938

args_0
unknown: 

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?

?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24872

args_07
$dense_matmul_readvariableop_resource:	?& 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24246

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????&a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?

?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24402

args_07
$dense_matmul_readvariableop_resource:	?& 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0
?
j
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24822

args_0
identity?Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @|
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:????????? K
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? ?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? ?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? i
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?1
?	
__inference__traced_save_25049
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop+
'savev2_adagrad_iter_read_readvariableop	,
(savev2_adagrad_decay_read_readvariableop4
0savev2_adagrad_learning_rate_read_readvariableop<
8savev2_module_wrapper_3_dense_kernel_read_readvariableop:
6savev2_module_wrapper_3_dense_bias_read_readvariableop>
:savev2_module_wrapper_6_dense_1_kernel_read_readvariableop<
8savev2_module_wrapper_6_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop@
<savev2_adagrad_conv2d_kernel_accumulator_read_readvariableop>
:savev2_adagrad_conv2d_bias_accumulator_read_readvariableopP
Lsavev2_adagrad_module_wrapper_3_dense_kernel_accumulator_read_readvariableopN
Jsavev2_adagrad_module_wrapper_3_dense_bias_accumulator_read_readvariableopR
Nsavev2_adagrad_module_wrapper_6_dense_1_kernel_accumulator_read_readvariableopP
Lsavev2_adagrad_module_wrapper_6_dense_1_bias_accumulator_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop'savev2_adagrad_iter_read_readvariableop(savev2_adagrad_decay_read_readvariableop0savev2_adagrad_learning_rate_read_readvariableop8savev2_module_wrapper_3_dense_kernel_read_readvariableop6savev2_module_wrapper_3_dense_bias_read_readvariableop:savev2_module_wrapper_6_dense_1_kernel_read_readvariableop8savev2_module_wrapper_6_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop<savev2_adagrad_conv2d_kernel_accumulator_read_readvariableop:savev2_adagrad_conv2d_bias_accumulator_read_readvariableopLsavev2_adagrad_module_wrapper_3_dense_kernel_accumulator_read_readvariableopJsavev2_adagrad_module_wrapper_3_dense_bias_accumulator_read_readvariableopNsavev2_adagrad_module_wrapper_6_dense_1_kernel_accumulator_read_readvariableopLsavev2_adagrad_module_wrapper_6_dense_1_bias_accumulator_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :	?& : : 
:
: : : : : : :	?& : : 
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?& : 

_output_shapes
: :$ 

_output_shapes

: 
: 	

_output_shapes
:
:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	?& : 

_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:

_output_shapes
: 
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_24581
conv2d_input&
conv2d_24559: 
conv2d_24561: )
module_wrapper_3_24568:	?& $
module_wrapper_3_24570: (
module_wrapper_6_24575: 
$
module_wrapper_6_24577:

identity??conv2d/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_24559conv2d_24561*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_24214?
module_wrapper/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24225?
max_pooling2d/PartitionedCallPartitionedCall'module_wrapper/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231?
 module_wrapper_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24238?
 module_wrapper_2/PartitionedCallPartitionedCall)module_wrapper_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24246?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0module_wrapper_3_24568module_wrapper_3_24570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24258?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24269?
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24276?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_24575module_wrapper_6_24577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24289?
IdentityIdentity1module_wrapper_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_24755

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?(
?
E__inference_sequential_layer_call_and_return_conditional_losses_24606
conv2d_input&
conv2d_24584: 
conv2d_24586: )
module_wrapper_3_24593:	?& $
module_wrapper_3_24595: (
module_wrapper_6_24600: 
$
module_wrapper_6_24602:

identity??conv2d/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_24584conv2d_24586*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_24214?
module_wrapper/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24467?
max_pooling2d/PartitionedCallPartitionedCall'module_wrapper/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24446?
 module_wrapper_2/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24423?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0module_wrapper_3_24593module_wrapper_3_24595*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24402?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24377?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0)^module_wrapper_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24361?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0module_wrapper_6_24600module_wrapper_6_24602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24334?
IdentityIdentity1module_wrapper_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?
J
.__inference_module_wrapper_layer_call_fn_24760

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24225h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24838

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????&a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24423

args_0
identity^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  m
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????&a
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
&__inference_conv2d_layer_call_fn_24745

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_24214w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
L
0__inference_module_wrapper_1_layer_call_fn_24800

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24238h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
g
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24238

args_0
identity^
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:????????? i
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_2_layer_call_fn_24832

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24423a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?'
?
E__inference_sequential_layer_call_and_return_conditional_losses_24524

inputs&
conv2d_24502: 
conv2d_24504: )
module_wrapper_3_24511:	?& $
module_wrapper_3_24513: (
module_wrapper_6_24518: 
$
module_wrapper_6_24520:

identity??conv2d/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24502conv2d_24504*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_24214?
module_wrapper/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24467?
max_pooling2d/PartitionedCallPartitionedCall'module_wrapper/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24446?
 module_wrapper_2/PartitionedCallPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24423?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0module_wrapper_3_24511module_wrapper_3_24513*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24402?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24377?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0)^module_wrapper_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24361?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0module_wrapper_6_24518module_wrapper_6_24520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24334?
IdentityIdentity1module_wrapper_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24882

args_07
$dense_matmul_readvariableop_resource:	?& 3
%dense_biasadd_readvariableop_resource: 
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0u
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0
?
L
0__inference_module_wrapper_5_layer_call_fn_24907

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24276`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24969

args_08
&dense_1_matmul_readvariableop_resource: 
5
'dense_1_biasadd_readvariableop_resource:

identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_24296

inputs&
conv2d_24215: 
conv2d_24217: )
module_wrapper_3_24259:	?& $
module_wrapper_3_24261: (
module_wrapper_6_24290: 
$
module_wrapper_6_24292:

identity??conv2d/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_6/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24215conv2d_24217*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_24214?
module_wrapper/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24225?
max_pooling2d/PartitionedCallPartitionedCall'module_wrapper/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24231?
 module_wrapper_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24238?
 module_wrapper_2/PartitionedCallPartitionedCall)module_wrapper_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????&* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24246?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_2/PartitionedCall:output:0module_wrapper_3_24259module_wrapper_3_24261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24258?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24269?
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24276?
(module_wrapper_6/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_5/PartitionedCall:output:0module_wrapper_6_24290module_wrapper_6_24292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24289?
IdentityIdentity1module_wrapper_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_6/StatefulPartitionedCall(module_wrapper_6/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24289

args_08
&dense_1_matmul_readvariableop_resource: 
5
'dense_1_biasadd_readvariableop_resource:

identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0y
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?/
?
 __inference__wrapped_model_24185
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: S
@sequential_module_wrapper_3_dense_matmul_readvariableop_resource:	?& O
Asequential_module_wrapper_3_dense_biasadd_readvariableop_resource: T
Bsequential_module_wrapper_6_dense_1_matmul_readvariableop_resource: 
Q
Csequential_module_wrapper_6_dense_1_biasadd_readvariableop_resource:

identity??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?8sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_3/dense/MatMul/ReadVariableOp?:sequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp?9sequential/module_wrapper_6/dense_1/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
/sequential/module_wrapper/leaky_re_lu/LeakyRelu	LeakyRelu"sequential/conv2d/BiasAdd:output:0*/
_output_shapes
:????????? *
alpha%???=?
 sequential/max_pooling2d/MaxPoolMaxPool=sequential/module_wrapper/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
,sequential/module_wrapper_1/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:????????? z
)sequential/module_wrapper_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
+sequential/module_wrapper_2/flatten/ReshapeReshape5sequential/module_wrapper_1/dropout/Identity:output:02sequential/module_wrapper_2/flatten/Const:output:0*
T0*(
_output_shapes
:??????????&?
7sequential/module_wrapper_3/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_3_dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0?
(sequential/module_wrapper_3/dense/MatMulMatMul4sequential/module_wrapper_2/flatten/Reshape:output:0?sequential/module_wrapper_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
8sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
)sequential/module_wrapper_3/dense/BiasAddBiasAdd2sequential/module_wrapper_3/dense/MatMul:product:0@sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
3sequential/module_wrapper_4/leaky_re_lu_1/LeakyRelu	LeakyRelu2sequential/module_wrapper_3/dense/BiasAdd:output:0*'
_output_shapes
:????????? *
alpha%???=?
.sequential/module_wrapper_5/dropout_1/IdentityIdentityAsequential/module_wrapper_4/leaky_re_lu_1/LeakyRelu:activations:0*
T0*'
_output_shapes
:????????? ?
9sequential/module_wrapper_6/dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_module_wrapper_6_dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
*sequential/module_wrapper_6/dense_1/MatMulMatMul7sequential/module_wrapper_5/dropout_1/Identity:output:0Asequential/module_wrapper_6/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
:sequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOpReadVariableOpCsequential_module_wrapper_6_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
+sequential/module_wrapper_6/dense_1/BiasAddBiasAdd4sequential/module_wrapper_6/dense_1/MatMul:product:0Bsequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
+sequential/module_wrapper_6/dense_1/SoftmaxSoftmax4sequential/module_wrapper_6/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
IdentityIdentity5sequential/module_wrapper_6/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp9^sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_3/dense/MatMul/ReadVariableOp;^sequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp:^sequential/module_wrapper_6/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2t
8sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_3/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_3/dense/MatMul/ReadVariableOp7sequential/module_wrapper_3/dense/MatMul/ReadVariableOp2x
:sequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp:sequential/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp2v
9sequential/module_wrapper_6/dense_1/MatMul/ReadVariableOp9sequential/module_wrapper_6/dense_1/MatMul/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?
i
0__inference_module_wrapper_1_layer_call_fn_24805

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24446w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?;
?
E__inference_sequential_layer_call_and_return_conditional_losses_24736

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: H
5module_wrapper_3_dense_matmul_readvariableop_resource:	?& D
6module_wrapper_3_dense_biasadd_readvariableop_resource: I
7module_wrapper_6_dense_1_matmul_readvariableop_resource: 
F
8module_wrapper_6_dense_1_biasadd_readvariableop_resource:

identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?-module_wrapper_3/dense/BiasAdd/ReadVariableOp?,module_wrapper_3/dense/MatMul/ReadVariableOp?/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_6/dense_1/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
$module_wrapper/leaky_re_lu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*/
_output_shapes
:????????? *
alpha%???=?
max_pooling2d/MaxPoolMaxPool2module_wrapper/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
k
&module_wrapper_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
$module_wrapper_1/dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0/module_wrapper_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:????????? t
&module_wrapper_1/dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:?
=module_wrapper_1/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0t
/module_wrapper_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
-module_wrapper_1/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_1/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? ?
%module_wrapper_1/dropout/dropout/CastCast1module_wrapper_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? ?
&module_wrapper_1/dropout/dropout/Mul_1Mul(module_wrapper_1/dropout/dropout/Mul:z:0)module_wrapper_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? o
module_wrapper_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
 module_wrapper_2/flatten/ReshapeReshape*module_wrapper_1/dropout/dropout/Mul_1:z:0'module_wrapper_2/flatten/Const:output:0*
T0*(
_output_shapes
:??????????&?
,module_wrapper_3/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_3_dense_matmul_readvariableop_resource*
_output_shapes
:	?& *
dtype0?
module_wrapper_3/dense/MatMulMatMul)module_wrapper_2/flatten/Reshape:output:04module_wrapper_3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
-module_wrapper_3/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_3_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
module_wrapper_3/dense/BiasAddBiasAdd'module_wrapper_3/dense/MatMul:product:05module_wrapper_3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(module_wrapper_4/leaky_re_lu_1/LeakyRelu	LeakyRelu'module_wrapper_3/dense/BiasAdd:output:0*'
_output_shapes
:????????? *
alpha%???=m
(module_wrapper_5/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
&module_wrapper_5/dropout_1/dropout/MulMul6module_wrapper_4/leaky_re_lu_1/LeakyRelu:activations:01module_wrapper_5/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? ?
(module_wrapper_5/dropout_1/dropout/ShapeShape6module_wrapper_4/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:?
?module_wrapper_5/dropout_1/dropout/random_uniform/RandomUniformRandomUniform1module_wrapper_5/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0v
1module_wrapper_5/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
/module_wrapper_5/dropout_1/dropout/GreaterEqualGreaterEqualHmodule_wrapper_5/dropout_1/dropout/random_uniform/RandomUniform:output:0:module_wrapper_5/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
'module_wrapper_5/dropout_1/dropout/CastCast3module_wrapper_5/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
(module_wrapper_5/dropout_1/dropout/Mul_1Mul*module_wrapper_5/dropout_1/dropout/Mul:z:0+module_wrapper_5/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? ?
.module_wrapper_6/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_6_dense_1_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
module_wrapper_6/dense_1/MatMulMatMul,module_wrapper_5/dropout_1/dropout/Mul_1:z:06module_wrapper_6/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
/module_wrapper_6/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_6_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
 module_wrapper_6/dense_1/BiasAddBiasAdd)module_wrapper_6/dense_1/MatMul:product:07module_wrapper_6/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
 module_wrapper_6/dense_1/SoftmaxSoftmax)module_wrapper_6/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
y
IdentityIdentity*module_wrapper_6/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp.^module_wrapper_3/dense/BiasAdd/ReadVariableOp-^module_wrapper_3/dense/MatMul/ReadVariableOp0^module_wrapper_6/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_6/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2^
-module_wrapper_3/dense/BiasAdd/ReadVariableOp-module_wrapper_3/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_3/dense/MatMul/ReadVariableOp,module_wrapper_3/dense/MatMul/ReadVariableOp2b
/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp/module_wrapper_6/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_6/dense_1/MatMul/ReadVariableOp.module_wrapper_6/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_24662

inputs!
unknown: 
	unknown_0: 
	unknown_1:	?& 
	unknown_2: 
	unknown_3: 

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24524o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_24311
conv2d_input!
unknown: 
	unknown_0: 
	unknown_1:	?& 
	unknown_2: 
	unknown_3: 

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameconv2d_input
?
g
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24917

args_0
identityX
dropout_1/IdentityIdentityargs_0*
T0*'
_output_shapes
:????????? c
IdentityIdentitydropout_1/Identity:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_6_layer_call_fn_24947

args_0
unknown: 

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_3_layer_call_fn_24862

args_0
unknown:	?& 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24402o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????&
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
conv2d_input=
serving_default_conv2d_input:0?????????D
module_wrapper_60
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_module
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_module
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$_module
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
)_module
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
._module
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3_module
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8_module
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=iter
	>decay
?learning_rateaccumulator?accumulator?@accumulator?Aaccumulator?Baccumulator?Caccumulator?"
	optimizer
J
0
1
@2
A3
B4
C5"
trackable_list_wrapper
J
0
1
@2
A3
B4
C5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
':% 2conv2d/kernel
: 2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
\trainable_variables
]regularization_losses
^	variables
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
 	variables
!trainable_variables
"regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
etrainable_variables
fregularization_losses
g	variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

@kernel
Abias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
wtrainable_variables
xregularization_losses
y	variables
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Bkernel
Cbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adagrad/iter
: (2Adagrad/decay
: (2Adagrad/learning_rate
0:.	?& 2module_wrapper_3/dense/kernel
):' 2module_wrapper_3/dense/bias
1:/ 
2module_wrapper_6/dense_1/kernel
+:)
2module_wrapper_6/dense_1/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
Ntrainable_variables
Oregularization_losses
P	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
\trainable_variables
]regularization_losses
^	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
etrainable_variables
fregularization_losses
g	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
ntrainable_variables
oregularization_losses
p	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
wtrainable_variables
xregularization_losses
y	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
?layer_metrics
?layers
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?	variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
9:7 2!Adagrad/conv2d/kernel/accumulator
+:) 2Adagrad/conv2d/bias/accumulator
B:@	?& 21Adagrad/module_wrapper_3/dense/kernel/accumulator
;:9 2/Adagrad/module_wrapper_3/dense/bias/accumulator
C:A 
23Adagrad/module_wrapper_6/dense_1/kernel/accumulator
=:;
21Adagrad/module_wrapper_6/dense_1/bias/accumulator
?2?
*__inference_sequential_layer_call_fn_24311
*__inference_sequential_layer_call_fn_24645
*__inference_sequential_layer_call_fn_24662
*__inference_sequential_layer_call_fn_24556?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_24692
E__inference_sequential_layer_call_and_return_conditional_losses_24736
E__inference_sequential_layer_call_and_return_conditional_losses_24581
E__inference_sequential_layer_call_and_return_conditional_losses_24606?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_24185conv2d_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv2d_layer_call_fn_24745?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv2d_layer_call_and_return_conditional_losses_24755?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_module_wrapper_layer_call_fn_24760
.__inference_module_wrapper_layer_call_fn_24765?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24770
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24775?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_24780
-__inference_max_pooling2d_layer_call_fn_24785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24790
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_module_wrapper_1_layer_call_fn_24800
0__inference_module_wrapper_1_layer_call_fn_24805?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24810
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24822?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_2_layer_call_fn_24827
0__inference_module_wrapper_2_layer_call_fn_24832?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24838
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24844?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_3_layer_call_fn_24853
0__inference_module_wrapper_3_layer_call_fn_24862?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24872
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24882?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_4_layer_call_fn_24887
0__inference_module_wrapper_4_layer_call_fn_24892?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24897
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24902?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_5_layer_call_fn_24907
0__inference_module_wrapper_5_layer_call_fn_24912?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24917
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24929?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_6_layer_call_fn_24938
0__inference_module_wrapper_6_layer_call_fn_24947?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24958
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24969?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
#__inference_signature_wrapper_24627conv2d_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_24185?@ABC=?:
3?0
.?+
conv2d_input?????????
? "C?@
>
module_wrapper_6*?'
module_wrapper_6?????????
?
A__inference_conv2d_layer_call_and_return_conditional_losses_24755l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
&__inference_conv2d_layer_call_fn_24745_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24790?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_24795h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
-__inference_max_pooling2d_layer_call_fn_24780?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
-__inference_max_pooling2d_layer_call_fn_24785[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24810xG?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0????????? 
? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_24822xG?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0????????? 
? ?
0__inference_module_wrapper_1_layer_call_fn_24800kG?D
-?*
(?%
args_0????????? 
?

trainingp " ?????????? ?
0__inference_module_wrapper_1_layer_call_fn_24805kG?D
-?*
(?%
args_0????????? 
?

trainingp" ?????????? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24838qG?D
-?*
(?%
args_0????????? 
?

trainingp "&?#
?
0??????????&
? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_24844qG?D
-?*
(?%
args_0????????? 
?

trainingp"&?#
?
0??????????&
? ?
0__inference_module_wrapper_2_layer_call_fn_24827dG?D
-?*
(?%
args_0????????? 
?

trainingp "???????????&?
0__inference_module_wrapper_2_layer_call_fn_24832dG?D
-?*
(?%
args_0????????? 
?

trainingp"???????????&?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24872m@A@?=
&?#
!?
args_0??????????&
?

trainingp "%?"
?
0????????? 
? ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_24882m@A@?=
&?#
!?
args_0??????????&
?

trainingp"%?"
?
0????????? 
? ?
0__inference_module_wrapper_3_layer_call_fn_24853`@A@?=
&?#
!?
args_0??????????&
?

trainingp "?????????? ?
0__inference_module_wrapper_3_layer_call_fn_24862`@A@?=
&?#
!?
args_0??????????&
?

trainingp"?????????? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24897h??<
%?"
 ?
args_0????????? 
?

trainingp "%?"
?
0????????? 
? ?
K__inference_module_wrapper_4_layer_call_and_return_conditional_losses_24902h??<
%?"
 ?
args_0????????? 
?

trainingp"%?"
?
0????????? 
? ?
0__inference_module_wrapper_4_layer_call_fn_24887[??<
%?"
 ?
args_0????????? 
?

trainingp "?????????? ?
0__inference_module_wrapper_4_layer_call_fn_24892[??<
%?"
 ?
args_0????????? 
?

trainingp"?????????? ?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24917h??<
%?"
 ?
args_0????????? 
?

trainingp "%?"
?
0????????? 
? ?
K__inference_module_wrapper_5_layer_call_and_return_conditional_losses_24929h??<
%?"
 ?
args_0????????? 
?

trainingp"%?"
?
0????????? 
? ?
0__inference_module_wrapper_5_layer_call_fn_24907[??<
%?"
 ?
args_0????????? 
?

trainingp "?????????? ?
0__inference_module_wrapper_5_layer_call_fn_24912[??<
%?"
 ?
args_0????????? 
?

trainingp"?????????? ?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24958lBC??<
%?"
 ?
args_0????????? 
?

trainingp "%?"
?
0?????????

? ?
K__inference_module_wrapper_6_layer_call_and_return_conditional_losses_24969lBC??<
%?"
 ?
args_0????????? 
?

trainingp"%?"
?
0?????????

? ?
0__inference_module_wrapper_6_layer_call_fn_24938_BC??<
%?"
 ?
args_0????????? 
?

trainingp "??????????
?
0__inference_module_wrapper_6_layer_call_fn_24947_BC??<
%?"
 ?
args_0????????? 
?

trainingp"??????????
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24770xG?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0????????? 
? ?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_24775xG?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0????????? 
? ?
.__inference_module_wrapper_layer_call_fn_24760kG?D
-?*
(?%
args_0????????? 
?

trainingp " ?????????? ?
.__inference_module_wrapper_layer_call_fn_24765kG?D
-?*
(?%
args_0????????? 
?

trainingp" ?????????? ?
E__inference_sequential_layer_call_and_return_conditional_losses_24581v@ABCE?B
;?8
.?+
conv2d_input?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_24606v@ABCE?B
;?8
.?+
conv2d_input?????????
p

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_24692p@ABC??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_24736p@ABC??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
*__inference_sequential_layer_call_fn_24311i@ABCE?B
;?8
.?+
conv2d_input?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_24556i@ABCE?B
;?8
.?+
conv2d_input?????????
p

 
? "??????????
?
*__inference_sequential_layer_call_fn_24645c@ABC??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_24662c@ABC??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_24627?@ABCM?J
? 
C?@
>
conv2d_input.?+
conv2d_input?????????"C?@
>
module_wrapper_6*?'
module_wrapper_6?????????
