��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.1-0-gf841394b1b78�
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_nameconv2d_5/kernel
|
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*'
_output_shapes
:�*
dtype0
�
conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameconv2d_transpose_3/bias
�
+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��**
shared_nameconv2d_transpose_3/kernel
�
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameconv2d_transpose_2/bias
�
+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��**
shared_nameconv2d_transpose_2/kernel
�
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*(
_output_shapes
:��*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:�@*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�@*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	d�@*
dtype0
�
serving_default_dense_3_inputPlaceholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_3_inputdense_3/kerneldense_3/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_5/kernelconv2d_5/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_225500

NoOpNoOp
�0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�0
value�0B�0 B�/
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op*
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
<
0
1
+2
,3
:4
;5
I6
J7*
<
0
1
+2
,3
:4
;5
I6
J7*
* 
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Qtrace_0
Rtrace_1* 

Strace_0
Ttrace_1* 
* 

Userving_default* 

0
1*

0
1*
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

[trace_0* 

\trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

btrace_0* 

ctrace_0* 
* 
* 
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

itrace_0* 

jtrace_0* 

+0
,1*

+0
,1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
ic
VARIABLE_VALUEconv2d_transpose_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

wtrace_0* 

xtrace_0* 

:0
;1*

:0
;1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

I0
J1*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
<
0
1
2
3
4
5
6
7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_5/kernelconv2d_5/biasConst*
Tin
2
*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_225742
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_5/kernelconv2d_5/bias*
Tin
2	*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_225775��
�
e
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225340

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:����������h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
3__inference_conv2d_transpose_2_layer_call_fn_225557

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225241�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225553:&"
 
_user_specified_name225551:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225672

inputs9
conv2d_readvariableop_resource:�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������  _
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������  �: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
F
*__inference_reshape_1_layer_call_fn_225534

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_225329i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225351

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������  �h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������  �"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������  �:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225529

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������@`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�d
�
!__inference__wrapped_model_225208
dense_3_inputC
0generator_dense_3_matmul_readvariableop_resource:	d�@@
1generator_dense_3_biasadd_readvariableop_resource:	�@a
Egenerator_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:��K
<generator_conv2d_transpose_2_biasadd_readvariableop_resource:	�a
Egenerator_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:��K
<generator_conv2d_transpose_3_biasadd_readvariableop_resource:	�L
1generator_conv2d_5_conv2d_readvariableop_resource:�@
2generator_conv2d_5_biasadd_readvariableop_resource:
identity��)generator/conv2d_5/BiasAdd/ReadVariableOp�(generator/conv2d_5/Conv2D/ReadVariableOp�3generator/conv2d_transpose_2/BiasAdd/ReadVariableOp�<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�3generator/conv2d_transpose_3/BiasAdd/ReadVariableOp�<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp�(generator/dense_3/BiasAdd/ReadVariableOp�'generator/dense_3/MatMul/ReadVariableOp�
'generator/dense_3/MatMul/ReadVariableOpReadVariableOp0generator_dense_3_matmul_readvariableop_resource*
_output_shapes
:	d�@*
dtype0�
generator/dense_3/MatMulMatMuldense_3_input/generator/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@�
(generator/dense_3/BiasAdd/ReadVariableOpReadVariableOp1generator_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0�
generator/dense_3/BiasAddBiasAdd"generator/dense_3/MatMul:product:00generator/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@|
!generator/leaky_re_lu_7/LeakyRelu	LeakyRelu"generator/dense_3/BiasAdd:output:0*(
_output_shapes
:����������@�
generator/reshape_1/ShapeShape/generator/leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
::��q
'generator/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)generator/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)generator/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!generator/reshape_1/strided_sliceStridedSlice"generator/reshape_1/Shape:output:00generator/reshape_1/strided_slice/stack:output:02generator/reshape_1/strided_slice/stack_1:output:02generator/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#generator/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#generator/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :f
#generator/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
!generator/reshape_1/Reshape/shapePack*generator/reshape_1/strided_slice:output:0,generator/reshape_1/Reshape/shape/1:output:0,generator/reshape_1/Reshape/shape/2:output:0,generator/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
generator/reshape_1/ReshapeReshape/generator/leaky_re_lu_7/LeakyRelu:activations:0*generator/reshape_1/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
"generator/conv2d_transpose_2/ShapeShape$generator/reshape_1/Reshape:output:0*
T0*
_output_shapes
::��z
0generator/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*generator/conv2d_transpose_2/strided_sliceStridedSlice+generator/conv2d_transpose_2/Shape:output:09generator/conv2d_transpose_2/strided_slice/stack:output:0;generator/conv2d_transpose_2/strided_slice/stack_1:output:0;generator/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$generator/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :f
$generator/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :g
$generator/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :��
"generator/conv2d_transpose_2/stackPack3generator/conv2d_transpose_2/strided_slice:output:0-generator/conv2d_transpose_2/stack/1:output:0-generator/conv2d_transpose_2/stack/2:output:0-generator/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:|
2generator/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4generator/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,generator/conv2d_transpose_2/strided_slice_1StridedSlice+generator/conv2d_transpose_2/stack:output:0;generator/conv2d_transpose_2/strided_slice_1/stack:output:0=generator/conv2d_transpose_2/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
-generator/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_2/stack:output:0Dgenerator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0$generator/reshape_1/Reshape:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
3generator/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$generator/conv2d_transpose_2/BiasAddBiasAdd6generator/conv2d_transpose_2/conv2d_transpose:output:0;generator/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
!generator/leaky_re_lu_8/LeakyRelu	LeakyRelu-generator/conv2d_transpose_2/BiasAdd:output:0*0
_output_shapes
:�����������
"generator/conv2d_transpose_3/ShapeShape/generator/leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
::��z
0generator/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*generator/conv2d_transpose_3/strided_sliceStridedSlice+generator/conv2d_transpose_3/Shape:output:09generator/conv2d_transpose_3/strided_slice/stack:output:0;generator/conv2d_transpose_3/strided_slice/stack_1:output:0;generator/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$generator/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$generator/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : g
$generator/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :��
"generator/conv2d_transpose_3/stackPack3generator/conv2d_transpose_3/strided_slice:output:0-generator/conv2d_transpose_3/stack/1:output:0-generator/conv2d_transpose_3/stack/2:output:0-generator/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:|
2generator/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4generator/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,generator/conv2d_transpose_3/strided_slice_1StridedSlice+generator/conv2d_transpose_3/stack:output:0;generator/conv2d_transpose_3/strided_slice_1/stack:output:0=generator/conv2d_transpose_3/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
-generator/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_3/stack:output:0Dgenerator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0/generator/leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
3generator/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$generator/conv2d_transpose_3/BiasAddBiasAdd6generator/conv2d_transpose_3/conv2d_transpose:output:0;generator/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  ��
!generator/leaky_re_lu_9/LeakyRelu	LeakyRelu-generator/conv2d_transpose_3/BiasAdd:output:0*0
_output_shapes
:���������  ��
(generator/conv2d_5/Conv2D/ReadVariableOpReadVariableOp1generator_conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
generator/conv2d_5/Conv2DConv2D/generator/leaky_re_lu_9/LeakyRelu:activations:00generator/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
)generator/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp2generator_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
generator/conv2d_5/BiasAddBiasAdd"generator/conv2d_5/Conv2D:output:01generator/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  ~
generator/conv2d_5/TanhTanh#generator/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������  r
IdentityIdentitygenerator/conv2d_5/Tanh:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp*^generator/conv2d_5/BiasAdd/ReadVariableOp)^generator/conv2d_5/Conv2D/ReadVariableOp4^generator/conv2d_transpose_2/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_3/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp)^generator/dense_3/BiasAdd/ReadVariableOp(^generator/dense_3/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 2V
)generator/conv2d_5/BiasAdd/ReadVariableOp)generator/conv2d_5/BiasAdd/ReadVariableOp2T
(generator/conv2d_5/Conv2D/ReadVariableOp(generator/conv2d_5/Conv2D/ReadVariableOp2j
3generator/conv2d_transpose_2/BiasAdd/ReadVariableOp3generator/conv2d_transpose_2/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_3/BiasAdd/ReadVariableOp3generator/conv2d_transpose_3/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2T
(generator/dense_3/BiasAdd/ReadVariableOp(generator/dense_3/BiasAdd/ReadVariableOp2R
'generator/dense_3/MatMul/ReadVariableOp'generator/dense_3/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input
�
�
$__inference_signature_wrapper_225500
dense_3_input
unknown:	d�@
	unknown_0:	�@%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�$
	unknown_5:�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_225208w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225496:&"
 
_user_specified_name225494:&"
 
_user_specified_name225492:&"
 
_user_specified_name225490:&"
 
_user_specified_name225488:&"
 
_user_specified_name225486:&"
 
_user_specified_name225484:&"
 
_user_specified_name225482:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input
�!
�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225283

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_5_layer_call_fn_225661

inputs"
unknown:�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225363w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������  �: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225657:&"
 
_user_specified_name225655:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225590

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�+
�
"__inference__traced_restore_225775
file_prefix2
assignvariableop_dense_3_kernel:	d�@.
assignvariableop_1_dense_3_bias:	�@H
,assignvariableop_2_conv2d_transpose_2_kernel:��9
*assignvariableop_3_conv2d_transpose_2_bias:	�H
,assignvariableop_4_conv2d_transpose_3_kernel:��9
*assignvariableop_5_conv2d_transpose_3_bias:	�=
"assignvariableop_6_conv2d_5_kernel:�.
 assignvariableop_7_conv2d_5_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp,assignvariableop_2_conv2d_transpose_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp*assignvariableop_3_conv2d_transpose_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp,assignvariableop_4_conv2d_transpose_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp*assignvariableop_5_conv2d_transpose_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_5_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_5_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
_output_shapes
 "!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72$
AssignVariableOpAssignVariableOp:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:73
1
_user_specified_nameconv2d_transpose_3/bias:95
3
_user_specified_nameconv2d_transpose_3/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�&
�
E__inference_generator_layer_call_and_return_conditional_losses_225370
dense_3_input!
dense_3_225305:	d�@
dense_3_225307:	�@5
conv2d_transpose_2_225331:��(
conv2d_transpose_2_225333:	�5
conv2d_transpose_3_225342:��(
conv2d_transpose_3_225344:	�*
conv2d_5_225364:�
conv2d_5_225366:
identity�� conv2d_5/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�*conv2d_transpose_3/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_225305dense_3_225307*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_225304�
leaky_re_lu_7/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225314�
reshape_1/PartitionedCallPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_225329�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_2_225331conv2d_transpose_2_225333*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225241�
leaky_re_lu_8/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225340�
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_3_225342conv2d_transpose_3_225344*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225283�
leaky_re_lu_9/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225351�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_5_225364conv2d_5_225366*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225363�
IdentityIdentity)conv2d_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp!^conv2d_5/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:&"
 
_user_specified_name225366:&"
 
_user_specified_name225364:&"
 
_user_specified_name225344:&"
 
_user_specified_name225342:&"
 
_user_specified_name225333:&"
 
_user_specified_name225331:&"
 
_user_specified_name225307:&"
 
_user_specified_name225305:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input
�
�
*__inference_generator_layer_call_fn_225440
dense_3_input
unknown:	d�@
	unknown_0:	�@%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�$
	unknown_5:�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_225398w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225436:&"
 
_user_specified_name225434:&"
 
_user_specified_name225432:&"
 
_user_specified_name225430:&"
 
_user_specified_name225428:&"
 
_user_specified_name225426:&"
 
_user_specified_name225424:&"
 
_user_specified_name225422:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input
�
�
3__inference_conv2d_transpose_3_layer_call_fn_225609

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225283�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225605:&"
 
_user_specified_name225603:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�&
�
E__inference_generator_layer_call_and_return_conditional_losses_225398
dense_3_input!
dense_3_225373:	d�@
dense_3_225375:	�@5
conv2d_transpose_2_225380:��(
conv2d_transpose_2_225382:	�5
conv2d_transpose_3_225386:��(
conv2d_transpose_3_225388:	�*
conv2d_5_225392:�
conv2d_5_225394:
identity�� conv2d_5/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�*conv2d_transpose_3/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_225373dense_3_225375*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_225304�
leaky_re_lu_7/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225314�
reshape_1/PartitionedCallPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_225329�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0conv2d_transpose_2_225380conv2d_transpose_2_225382*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225241�
leaky_re_lu_8/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225340�
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_3_225386conv2d_transpose_3_225388*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225283�
leaky_re_lu_9/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225351�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_5_225392conv2d_5_225394*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225363�
IdentityIdentity)conv2d_5/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp!^conv2d_5/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:&"
 
_user_specified_name225394:&"
 
_user_specified_name225392:&"
 
_user_specified_name225388:&"
 
_user_specified_name225386:&"
 
_user_specified_name225382:&"
 
_user_specified_name225380:&"
 
_user_specified_name225375:&"
 
_user_specified_name225373:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input
�	
�
C__inference_dense_3_layer_call_and_return_conditional_losses_225304

inputs1
matmul_readvariableop_resource:	d�@.
biasadd_readvariableop_resource:	�@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_8_layer_call_fn_225595

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225340i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225314

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������@`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�	
�
C__inference_dense_3_layer_call_and_return_conditional_losses_225519

inputs1
matmul_readvariableop_resource:	d�@.
biasadd_readvariableop_resource:	�@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d�@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_dense_3_layer_call_fn_225509

inputs
unknown:	d�@
	unknown_0:	�@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_225304p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225505:&"
 
_user_specified_name225503:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�K
�
__inference__traced_save_225742
file_prefix8
%read_disablecopyonread_dense_3_kernel:	d�@4
%read_1_disablecopyonread_dense_3_bias:	�@N
2read_2_disablecopyonread_conv2d_transpose_2_kernel:��?
0read_3_disablecopyonread_conv2d_transpose_2_bias:	�N
2read_4_disablecopyonread_conv2d_transpose_3_kernel:��?
0read_5_disablecopyonread_conv2d_transpose_3_bias:	�C
(read_6_disablecopyonread_conv2d_5_kernel:�4
&read_7_disablecopyonread_conv2d_5_bias:
savev2_const
identity_17��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_3_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	d�@*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d�@b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	d�@y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_3_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�@*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�@`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�@�
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_conv2d_transpose_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0w

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��m

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_3/DisableCopyOnReadDisableCopyOnRead0read_3_disablecopyonread_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp0read_3_disablecopyonread_conv2d_transpose_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead2read_4_disablecopyonread_conv2d_transpose_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp2read_4_disablecopyonread_conv2d_transpose_3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0w

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��m

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_5/DisableCopyOnReadDisableCopyOnRead0read_5_disablecopyonread_conv2d_transpose_3_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp0read_5_disablecopyonread_conv2d_transpose_3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_5_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:�z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_5_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_16Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_17IdentityIdentity_16:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp*
_output_shapes
 "#
identity_17Identity_17:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp:=	9

_output_shapes
: 

_user_specified_nameConst:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:73
1
_user_specified_nameconv2d_transpose_3/bias:95
3
_user_specified_nameconv2d_transpose_3/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225652

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:���������  �h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:���������  �"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������  �:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_9_layer_call_fn_225647

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225351i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������  �"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������  �:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_7_layer_call_fn_225524

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225314a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_225329

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�
a
E__inference_reshape_1_layer_call_and_return_conditional_losses_225548

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������@:P L
(
_output_shapes
:����������@
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225642

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225363

inputs9
conv2d_readvariableop_resource:�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������  _
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������  S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������  �: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:���������  �
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225600

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:����������h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�!
�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225241

inputsD
(conv2d_transpose_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :�y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,����������������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
*__inference_generator_layer_call_fn_225419
dense_3_input
unknown:	d�@
	unknown_0:	�@%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�$
	unknown_5:�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_225370w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name225415:&"
 
_user_specified_name225413:&"
 
_user_specified_name225411:&"
 
_user_specified_name225409:&"
 
_user_specified_name225407:&"
 
_user_specified_name225405:&"
 
_user_specified_name225403:&"
 
_user_specified_name225401:V R
'
_output_shapes
:���������d
'
_user_specified_namedense_3_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
dense_3_input6
serving_default_dense_3_input:0���������dD
conv2d_58
StatefulPartitionedCall:0���������  tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
X
0
1
+2
,3
:4
;5
I6
J7"
trackable_list_wrapper
X
0
1
+2
,3
:4
;5
I6
J7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Qtrace_0
Rtrace_12�
*__inference_generator_layer_call_fn_225419
*__inference_generator_layer_call_fn_225440�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0zRtrace_1
�
Strace_0
Ttrace_12�
E__inference_generator_layer_call_and_return_conditional_losses_225370
E__inference_generator_layer_call_and_return_conditional_losses_225398�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0zTtrace_1
�B�
!__inference__wrapped_model_225208dense_3_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Userving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
[trace_02�
(__inference_dense_3_layer_call_fn_225509�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0
�
\trace_02�
C__inference_dense_3_layer_call_and_return_conditional_losses_225519�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
!:	d�@2dense_3/kernel
:�@2dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
.__inference_leaky_re_lu_7_layer_call_fn_225524�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225529�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
*__inference_reshape_1_layer_call_fn_225534�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
E__inference_reshape_1_layer_call_and_return_conditional_losses_225548�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
3__inference_conv2d_transpose_2_layer_call_fn_225557�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225590�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
5:3��2conv2d_transpose_2/kernel
&:$�2conv2d_transpose_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
.__inference_leaky_re_lu_8_layer_call_fn_225595�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225600�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
3__inference_conv2d_transpose_3_layer_call_fn_225609�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
trace_02�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225642�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
5:3��2conv2d_transpose_3/kernel
&:$�2conv2d_transpose_3/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_leaky_re_lu_9_layer_call_fn_225647�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225652�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_5_layer_call_fn_225661�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225672�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(�2conv2d_5/kernel
:2conv2d_5/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_generator_layer_call_fn_225419dense_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_generator_layer_call_fn_225440dense_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_generator_layer_call_and_return_conditional_losses_225370dense_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_generator_layer_call_and_return_conditional_losses_225398dense_3_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_225500dense_3_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_dense_3_layer_call_fn_225509inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_3_layer_call_and_return_conditional_losses_225519inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
.__inference_leaky_re_lu_7_layer_call_fn_225524inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225529inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_reshape_1_layer_call_fn_225534inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_reshape_1_layer_call_and_return_conditional_losses_225548inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_2_layer_call_fn_225557inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225590inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
.__inference_leaky_re_lu_8_layer_call_fn_225595inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225600inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_conv2d_transpose_3_layer_call_fn_225609inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225642inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
.__inference_leaky_re_lu_9_layer_call_fn_225647inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225652inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_5_layer_call_fn_225661inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225672inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_225208+,:;IJ6�3
,�)
'�$
dense_3_input���������d
� ";�8
6
conv2d_5*�'
conv2d_5���������  �
D__inference_conv2d_5_layer_call_and_return_conditional_losses_225672tIJ8�5
.�+
)�&
inputs���������  �
� "4�1
*�'
tensor_0���������  
� �
)__inference_conv2d_5_layer_call_fn_225661iIJ8�5
.�+
)�&
inputs���������  �
� ")�&
unknown���������  �
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_225590�+,J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
3__inference_conv2d_transpose_2_layer_call_fn_225557�+,J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_225642�:;J�G
@�=
;�8
inputs,����������������������������
� "G�D
=�:
tensor_0,����������������������������
� �
3__inference_conv2d_transpose_3_layer_call_fn_225609�:;J�G
@�=
;�8
inputs,����������������������������
� "<�9
unknown,�����������������������������
C__inference_dense_3_layer_call_and_return_conditional_losses_225519d/�,
%�"
 �
inputs���������d
� "-�*
#� 
tensor_0����������@
� �
(__inference_dense_3_layer_call_fn_225509Y/�,
%�"
 �
inputs���������d
� ""�
unknown����������@�
E__inference_generator_layer_call_and_return_conditional_losses_225370�+,:;IJ>�;
4�1
'�$
dense_3_input���������d
p

 
� "4�1
*�'
tensor_0���������  
� �
E__inference_generator_layer_call_and_return_conditional_losses_225398�+,:;IJ>�;
4�1
'�$
dense_3_input���������d
p 

 
� "4�1
*�'
tensor_0���������  
� �
*__inference_generator_layer_call_fn_225419u+,:;IJ>�;
4�1
'�$
dense_3_input���������d
p

 
� ")�&
unknown���������  �
*__inference_generator_layer_call_fn_225440u+,:;IJ>�;
4�1
'�$
dense_3_input���������d
p 

 
� ")�&
unknown���������  �
I__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_225529a0�-
&�#
!�
inputs����������@
� "-�*
#� 
tensor_0����������@
� �
.__inference_leaky_re_lu_7_layer_call_fn_225524V0�-
&�#
!�
inputs����������@
� ""�
unknown����������@�
I__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_225600q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
.__inference_leaky_re_lu_8_layer_call_fn_225595f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
I__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_225652q8�5
.�+
)�&
inputs���������  �
� "5�2
+�(
tensor_0���������  �
� �
.__inference_leaky_re_lu_9_layer_call_fn_225647f8�5
.�+
)�&
inputs���������  �
� "*�'
unknown���������  ��
E__inference_reshape_1_layer_call_and_return_conditional_losses_225548i0�-
&�#
!�
inputs����������@
� "5�2
+�(
tensor_0����������
� �
*__inference_reshape_1_layer_call_fn_225534^0�-
&�#
!�
inputs����������@
� "*�'
unknown�����������
$__inference_signature_wrapper_225500�+,:;IJG�D
� 
=�:
8
dense_3_input'�$
dense_3_input���������d";�8
6
conv2d_5*�'
conv2d_5���������  