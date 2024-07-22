; ModuleID = './build/bin/fixed/gemm/16/gemm-standard-16-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/gemm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [49 x i8] c"target('C') scalar(range(0.0,1615.359985) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,15.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [35 x i8] c"scalar(range(0.0,14.666667) final)\00", section "llvm.metadata", !taffo.info !0
@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 !taffo.equivalentChild !38 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !40

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !41 !taffo.funinfo !42 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !43

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !44

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !45

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !47 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !48, !taffo.info !49
  %beta = alloca float, align 4, !taffo.initweight !48, !taffo.info !51
  %C = alloca [10 x [12 x float]], align 4, !taffo.initweight !48, !taffo.info !53, !taffo.target !54
  %A = alloca [10 x [16 x float]], align 4, !taffo.initweight !48, !taffo.info !55
  %B = alloca [16 x [12 x float]], align 4, !taffo.initweight !48, !taffo.info !57
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !59, !taffo.info !49
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !59, !taffo.info !51
  %C3 = bitcast [10 x [12 x float]]* %C to i8*, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %A4 = bitcast [10 x [16 x float]]* %A to i8*, !taffo.initweight !59, !taffo.info !55
  %B5 = bitcast [16 x [12 x float]]* %B to i8*, !taffo.initweight !59, !taffo.info !57
  %arraydecay = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55
  %arraydecay7 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @init_array.4(i32 noundef 10, i32 noundef 12, i32 noundef 16, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay6, [12 x float]* noundef %arraydecay7), !taffo.initweight !59, !taffo.info !49, !taffo.originalCall !60, !taffo.constinfo !61
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 16), !taffo.initweight !59, !taffo.info !49, !taffo.originalCall !62, !taffo.constinfo !63
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 16), !taffo.initweight !59, !taffo.info !51, !taffo.originalCall !62, !taffo.constinfo !63
  %arraydecay8 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %0 = bitcast [12 x float]* %arraydecay8 to float*, !taffo.initweight !64, !taffo.info !53, !taffo.target !54
  call void @scale_2d.5(i32 noundef 10, i32 noundef 12, float* noundef %0, i32 noundef 16), !taffo.initweight !65, !taffo.info !53, !taffo.target !54, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay9 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55
  %1 = bitcast [16 x float]* %arraydecay9 to float*, !taffo.initweight !64, !taffo.info !55
  call void @scale_2d.6(i32 noundef 10, i32 noundef 16, float* noundef %1, i32 noundef 16), !taffo.initweight !65, !taffo.info !55, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay10 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  %2 = bitcast [12 x float]* %arraydecay10 to float*, !taffo.initweight !64, !taffo.info !57
  call void @scale_2d.7(i32 noundef 16, i32 noundef 12, float* noundef %2, i32 noundef 16), !taffo.initweight !65, !taffo.info !57, !taffo.originalCall !66, !taffo.constinfo !67
  call void @timer_start(), !taffo.constinfo !68
  %3 = load float, float* %alpha, align 4, !taffo.initweight !59, !taffo.info !49
  %4 = load float, float* %beta, align 4, !taffo.initweight !59, !taffo.info !51
  %arraydecay11 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %arraydecay12 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55
  %arraydecay13 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @kernel_gemm.3(i32 noundef 10, i32 noundef 12, i32 noundef 16, float noundef %3, float noundef %4, [12 x float]* noundef %arraydecay11, [16 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.initweight !64, !taffo.info !49, !taffo.originalCall !69, !taffo.constinfo !61
  call void @timer_stop(), !taffo.constinfo !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp15 = icmp slt i32 %j.0, 12, !taffo.info !72
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !64, !taffo.info !53, !taffo.target !54
  %5 = load float, float* %arrayidx17, align 4, !taffo.initweight !65, !taffo.info !53, !taffo.target !54
  %arrayidx18 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx19 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !6
  store float %5, float* %arrayidx19, align 4, !taffo.initweight !76, !taffo.info !53, !taffo.target !54
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond14, !llvm.loop !79

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !82

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !83
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !84 !taffo.funinfo !85 !taffo.equivalentChild !86 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !87
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !92
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !65, !taffo.info !92

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !92
  %cmp4 = icmp slt i32 %j.0, %nj, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !65, !taffo.info !92

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !64, !taffo.info !92
  %add = add nsw i32 %mul, 1, !taffo.initweight !65, !taffo.info !92, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !76, !taffo.info !92
  %conv = sitofp i32 %rem to float, !taffo.initweight !94, !taffo.info !92
  %conv6 = sitofp i32 %ni to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !95, !taffo.info !92
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.initweight !64, !taffo.info !96
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !64, !taffo.info !96
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !97

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !98

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !92
  %cmp12 = icmp slt i32 %i.1, %ni, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !65, !taffo.info !92

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !92
  %cmp16 = icmp slt i32 %j.1, %nk, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !65, !taffo.info !92

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !64, !taffo.info !92
  %rem21 = srem i32 %mul20, %nk, !taffo.initweight !65, !taffo.info !92
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !76, !taffo.info !92
  %conv23 = sitofp i32 %nk to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !94, !taffo.info !92
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.1, !taffo.initweight !64, !taffo.info !96
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !64, !taffo.info !96
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !99

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !100

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc53, %for.inc52 ], !taffo.initweight !48, !taffo.info !92
  %cmp34 = icmp slt i32 %i.2, %nk, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.initweight !65, !taffo.info !92

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc50, %for.inc49 ], !taffo.initweight !48, !taffo.info !92
  %cmp38 = icmp slt i32 %j.2, %nj, !taffo.initweight !64, !taffo.info !92
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.initweight !65, !taffo.info !92

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 2, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !64, !taffo.info !92
  %rem43 = srem i32 %mul42, %nj, !taffo.initweight !65, !taffo.info !92
  %conv44 = sitofp i32 %rem43 to float, !taffo.initweight !76, !taffo.info !92
  %conv45 = sitofp i32 %nj to float
  %div46 = fdiv float %conv44, %conv45, !taffo.initweight !94, !taffo.info !92
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %i.2, !taffo.initweight !64, !taffo.info !96
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx47, i32 0, i32 %j.2, !taffo.initweight !64, !taffo.info !96
  store float %div46, float* %arrayidx48, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %inc50 = add nsw i32 %j.2, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !101

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %inc53 = add nsw i32 %i.2, 1, !taffo.initweight !64, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !102

for.end54:                                        ; preds = %for.cond33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !84 !taffo.funinfo !85 !taffo.equivalentChild !103 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %cmp = icmp slt i32 %i.0, %ni
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %nj
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx4, align 4
  %mul = fmul float %0, %beta
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !104

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ]
  %cmp6 = icmp slt i32 %k.0, %nk
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ]
  %cmp9 = icmp slt i32 %j.1, %nj
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %alpha, %1
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %k.0
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx14, i32 0, i32 %j.1
  %2 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %2
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i32 0, i32 %j.1
  %3 = load float, float* %arrayidx18, align 4
  %add = fadd float %3, %mul16
  store float %add, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !105

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !106

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !107

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nj, [12 x float]* noundef %C) #0 !taffo.initweight !33 !taffo.funinfo !108 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !111
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !113
  %add = add nsw i32 %mul, %j.0, !taffo.info !113
  %rem = srem i32 %add, 20, !taffo.info !113, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !111
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !63
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !83
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !115

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !116

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !62 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !117 !taffo.funinfo !121 !taffo.sourceFunction !62 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.3(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !122 !taffo.funinfo !123 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !111
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.initweight !94, !taffo.info !53
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !124, !taffo.info !53
  %mul = fmul float %0, %beta, !taffo.initweight !94, !taffo.info !125
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !95, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !127

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !72
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !111
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !72
  %cmp9 = icmp slt i32 %j.1, %nj, !taffo.info !111
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !94, !taffo.info !55
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.initweight !95, !taffo.info !55
  %1 = load float, float* %arrayidx12, align 4, !taffo.initweight !124, !taffo.info !55
  %mul13 = fmul float %alpha, %1, !taffo.initweight !94, !taffo.info !128
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %k.0, !taffo.initweight !94, !taffo.info !57
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx14, i32 0, i32 %j.1, !taffo.initweight !95, !taffo.info !57
  %2 = load float, float* %arrayidx15, align 4, !taffo.initweight !124, !taffo.info !57
  %mul16 = fmul float %mul13, %2, !taffo.initweight !95, !taffo.info !130
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.initweight !94, !taffo.info !53
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.initweight !95, !taffo.info !53
  %3 = load float, float* %arrayidx18, align 4, !taffo.initweight !124, !taffo.info !53
  %add = fadd float %3, %mul16, !taffo.initweight !124, !taffo.info !132
  store float %add, float* %arrayidx18, align 4, !taffo.initweight !124, !taffo.info !53
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !134

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !135

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !136

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !137 !taffo.funinfo !123 !taffo.sourceFunction !60 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !76, !taffo.info !49, !taffo.constinfo !87
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !76, !taffo.info !51, !taffo.constinfo !89
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !138
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !65, !taffo.info !92

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !138
  %cmp4 = icmp slt i32 %j.0, %nj, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !65, !taffo.info !92

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !64, !taffo.info !141
  %add = add nsw i32 %mul, 1, !taffo.initweight !65, !taffo.info !143, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !76, !taffo.info !145
  %conv = sitofp i32 %rem to float, !taffo.initweight !94, !taffo.info !145
  %conv6 = sitofp i32 %ni to float, !taffo.info !22
  %div = fdiv float %conv, %conv6, !taffo.initweight !95, !taffo.info !147
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.initweight !64, !taffo.info !149
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !64, !taffo.info !149
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !152

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !153

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !138
  %cmp12 = icmp slt i32 %i.1, %ni, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !65, !taffo.info !92

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !138
  %cmp16 = icmp slt i32 %j.1, %nk, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !65, !taffo.info !92

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !64, !taffo.info !154
  %rem21 = srem i32 %mul20, %nk, !taffo.initweight !65, !taffo.info !156
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !76, !taffo.info !156
  %conv23 = sitofp i32 %nk to float, !taffo.info !119
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !94, !taffo.info !157
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.1, !taffo.initweight !64, !taffo.info !156
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !64, !taffo.info !156
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !159

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !160

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc53, %for.inc52 ], !taffo.initweight !48, !taffo.info !138
  %cmp34 = icmp slt i32 %i.2, %nk, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.initweight !65, !taffo.info !92

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc50, %for.inc49 ], !taffo.initweight !48, !taffo.info !138
  %cmp38 = icmp slt i32 %j.2, %nj, !taffo.initweight !64, !taffo.info !140
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.initweight !65, !taffo.info !92

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 2, !taffo.initweight !64, !taffo.info !161, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !64, !taffo.info !163
  %rem43 = srem i32 %mul42, %nj, !taffo.initweight !65, !taffo.info !165
  %conv44 = sitofp i32 %rem43 to float, !taffo.initweight !76, !taffo.info !165
  %conv45 = sitofp i32 %nj to float, !taffo.info !109
  %div46 = fdiv float %conv44, %conv45, !taffo.initweight !94, !taffo.info !166
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %i.2, !taffo.initweight !64, !taffo.info !168
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx47, i32 0, i32 %j.2, !taffo.initweight !64, !taffo.info !168
  store float %div46, float* %arrayidx48, align 4, !taffo.initweight !65, !taffo.info !96
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %inc50 = add nsw i32 %j.2, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !169

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %inc53 = add nsw i32 %i.2, 1, !taffo.initweight !64, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !170

for.end54:                                        ; preds = %for.cond33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !172 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !111
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !95, !taffo.info !53
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !124, !taffo.info !53
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !173, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !119
  %mul = fmul float %1, %conv, !taffo.initweight !174, !taffo.info !175
  %2 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !95, !taffo.info !53
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !124, !taffo.info !53
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !173, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !177

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !178

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !179 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !111
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !95, !taffo.info !55
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !124, !taffo.info !55
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !173, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !119
  %mul = fmul float %1, %conv, !taffo.initweight !174, !taffo.info !180
  %2 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !95, !taffo.info !55
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !124, !taffo.info !55
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !173, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !182

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !183

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !184 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !111
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !95, !taffo.info !57
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !124, !taffo.info !57
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !173, !taffo.info !57
  %conv = sitofp i32 %factor to float, !taffo.info !119
  %mul = fmul float %1, %conv, !taffo.initweight !174, !taffo.info !185
  %2 = mul nsw i32 %i.0, %m, !taffo.info !113
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !95, !taffo.info !57
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !124, !taffo.info !57
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !173, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !187

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !111, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !188

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40993D709FE86834}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false}
!32 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.2}
!33 = !{i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = distinct !{!35, !29}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = !{}
!47 = !{i1 true}
!48 = !{i32 0}
!49 = !{i1 false, !50, i1 false, i2 -1}
!50 = !{double 1.500000e+00, double 1.500000e+00}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 1.200000e+00, double 1.200000e+00}
!53 = !{i1 false, !7, i1 false, i2 -1}
!54 = !{!"C"}
!55 = !{i1 false, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 1.500000e+01}
!57 = !{i1 false, !58, i1 false, i2 -1}
!58 = !{double 0.000000e+00, double 0x402D55556084A516}
!59 = !{i32 1}
!60 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{void (float*, i32)* @scale_scalar}
!63 = !{i1 false, i1 false, i1 false}
!64 = !{i32 2}
!65 = !{i32 3}
!66 = !{void (i32, i32, float*, i32)* @scale_2d}
!67 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!68 = !{i1 false}
!69 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.100000e+01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 1.430000e+02}
!76 = !{i32 4}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 1.430000e+02}
!79 = distinct !{!79, !29}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 1.100000e+01}
!82 = distinct !{!82, !29}
!83 = !{i1 false, i1 false, i1 false, i1 false}
!84 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!85 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!86 = !{void (i32, i32, i32, float*, float*, [12 x float]*, [16 x float]*, [12 x float]*)* @init_array.4}
!87 = !{!88, i1 false}
!88 = !{i1 false, !50, i1 false, i2 0}
!89 = !{!90, i1 false}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!92 = !{i1 false, !93, i1 false, i2 1}
!93 = !{double 0.000000e+00, double 1.600000e+01}
!94 = !{i32 5}
!95 = !{i32 6}
!96 = !{i1 false, i1 false, i1 false, i2 1}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = !{void (i32, i32, i32, float, float, [12 x float]*, [16 x float]*, [12 x float]*)* @kernel_gemm.3}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = !{i32 1, !22, i32 1, !109, i32 1, !6}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 1.200000e+01, double 1.200000e+01}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 1.000000e+00, double 1.000000e+00}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 0.000000e+00, double 0.000000e+00}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = !{i32 1, i32 -1}
!118 = !{i32 1, !49, i32 1, !119}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 1.600000e+01, double 1.600000e+01}
!121 = !{i32 1, !51, i32 1, !119}
!122 = !{i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!123 = !{i32 1, !22, i32 1, !109, i32 1, !119, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57}
!124 = !{i32 7}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x409E49BA597D49D8}
!127 = distinct !{!127, !29}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 2.250000e+01}
!130 = !{i1 false, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 0x4074A00007DD4413}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x409E6570A1DFB939}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = !{i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 0.000000e+00, double 1.700000e+01}
!140 = !{i1 false, !73, i1 false, i2 1}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 0.000000e+00, double 2.560000e+02}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 1.000000e+00, double 2.570000e+02}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 9.000000e+00}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 9.000000e-01}
!149 = !{i1 false, !7, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 1.000000e+00, double 1.700000e+01}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 2.720000e+02}
!156 = !{i1 false, !56, i1 false, i2 1}
!157 = !{i1 false, !158, i1 false, i2 1}
!158 = !{double 0.000000e+00, double 9.375000e-01}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
!161 = !{i1 false, !162, i1 false, i2 1}
!162 = !{double 2.000000e+00, double 1.800000e+01}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 0.000000e+00, double 2.880000e+02}
!165 = !{i1 false, !71, i1 false, i2 1}
!166 = !{i1 false, !167, i1 false, i2 1}
!167 = !{double 0.000000e+00, double 0x3FED555555555555}
!168 = !{i1 false, !58, i1 false, i2 1}
!169 = distinct !{!169, !29}
!170 = distinct !{!170, !29}
!171 = !{i32 -1, i32 -1, i32 3, i32 -1}
!172 = !{i32 1, !22, i32 1, !109, i32 1, !53, i32 1, !119}
!173 = !{i32 8}
!174 = !{i32 9}
!175 = !{i1 false, !176, i1 false, i2 -1}
!176 = !{double 0.000000e+00, double 0x40D93D709FE86834}
!177 = distinct !{!177, !29}
!178 = distinct !{!178, !29}
!179 = !{i32 1, !22, i32 1, !119, i32 1, !55, i32 1, !119}
!180 = !{i1 false, !181, i1 false, i2 -1}
!181 = !{double 0.000000e+00, double 2.400000e+02}
!182 = distinct !{!182, !29}
!183 = distinct !{!183, !29}
!184 = !{i32 1, !119, i32 1, !109, i32 1, !57, i32 1, !119}
!185 = !{i1 false, !186, i1 false, i2 -1}
!186 = !{double 0.000000e+00, double 0x406D55556084A516}
!187 = distinct !{!187, !29}
!188 = distinct !{!188, !29}
