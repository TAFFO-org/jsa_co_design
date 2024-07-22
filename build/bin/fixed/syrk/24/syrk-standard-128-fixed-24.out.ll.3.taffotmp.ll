; ModuleID = './build/bin/fixed/syrk/24/syrk-standard-128-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/syrk.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [51 x i8] c"target('C') scalar(range(0.0,105803.515625) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,120.0) final)\00", section "llvm.metadata", !taffo.info !0
@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata", !taffo.info !0
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
  %C = alloca [16 x [16 x float]], align 4, !taffo.initweight !48, !taffo.info !53, !taffo.target !54
  %A = alloca [16 x [10 x float]], align 4, !taffo.initweight !48, !taffo.info !55
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !57, !taffo.info !49
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !57, !taffo.info !51
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.initweight !57, !taffo.info !55
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay5 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  call void @init_array.4(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay5), !taffo.initweight !57, !taffo.info !49, !taffo.originalCall !58, !taffo.constinfo !59
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 128), !taffo.initweight !57, !taffo.info !49, !taffo.originalCall !60, !taffo.constinfo !61
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 128), !taffo.initweight !57, !taffo.info !51, !taffo.originalCall !60, !taffo.constinfo !61
  %arraydecay6 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %0 = bitcast [16 x float]* %arraydecay6 to float*, !taffo.initweight !62, !taffo.info !53, !taffo.target !54
  call void @scale_2d.5(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 128), !taffo.initweight !63, !taffo.info !53, !taffo.target !54, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  %1 = bitcast [10 x float]* %arraydecay7 to float*, !taffo.initweight !62, !taffo.info !55
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %1, i32 noundef 128), !taffo.initweight !63, !taffo.info !55, !taffo.originalCall !64, !taffo.constinfo !65
  call void @timer_start(), !taffo.constinfo !66
  %2 = load float, float* %alpha, align 4, !taffo.initweight !57, !taffo.info !49
  %3 = load float, float* %beta, align 4, !taffo.initweight !57, !taffo.info !51
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  call void @kernel_syrk.3(i32 noundef 16, i32 noundef 10, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9), !taffo.initweight !62, !taffo.info !49, !taffo.originalCall !67, !taffo.constinfo !59
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp11 = icmp sle i32 %j.0, %i.0, !taffo.info !70
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !62, !taffo.info !53, !taffo.target !54
  %4 = load float, float* %arrayidx13, align 4, !taffo.initweight !63, !taffo.info !53, !taffo.target !54
  %arrayidx14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !6
  store float %4, float* %arrayidx15, align 4, !taffo.initweight !72, !taffo.info !53, !taffo.target !54
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !27
  br label %for.cond10, !llvm.loop !75

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !76

for.end18:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !61
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !77 !taffo.funinfo !78 !taffo.equivalentChild !79 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !80
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !82
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !85
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !62, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !63, !taffo.info !85

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !87
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !62, !taffo.info !87
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !63, !taffo.info !87

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !62, !taffo.info !85
  %add = add nsw i32 %mul, 1, !taffo.initweight !63, !taffo.info !85, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !72, !taffo.info !85
  %conv = sitofp i32 %rem to float, !taffo.initweight !88, !taffo.info !85
  %conv6 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !89, !taffo.info !85
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !62, !taffo.info !90
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !62, !taffo.info !90
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !63, !taffo.info !90
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !62, !taffo.info !87, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !91

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !62, !taffo.info !85, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !92

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !85
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.initweight !62, !taffo.info !85
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !63, !taffo.info !85

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !87
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.initweight !62, !taffo.info !87
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !63, !taffo.info !87

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.initweight !62, !taffo.info !85
  %add20 = add nsw i32 %mul19, 2, !taffo.initweight !63, !taffo.info !85, !taffo.constinfo !27
  %rem21 = srem i32 %add20, %m, !taffo.initweight !72, !taffo.info !85
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !88, !taffo.info !85
  %conv23 = sitofp i32 %m to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !89, !taffo.info !85
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !62, !taffo.info !90
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !62, !taffo.info !90
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !63, !taffo.info !90
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !62, !taffo.info !87, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !93

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !62, !taffo.info !85, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !94

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !77 !taffo.funinfo !78 !taffo.equivalentChild !95 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp sle i32 %j.0, %i.0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx4, align 4
  %mul = fmul float %0, %beta
  store float %mul, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ]
  %cmp6 = icmp slt i32 %k.0, %m
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ]
  %cmp9 = icmp sle i32 %j.1, %i.0
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %alpha, %1
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0
  %2 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %mul13, %2
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1
  %3 = load float, float* %arrayidx18, align 4
  %add = fadd float %3, %mul16
  store float %add, float* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !97

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !98

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !99

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !30 !taffo.funinfo !100 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !103
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !105
  %add = add nsw i32 %mul, %j.0, !taffo.info !105
  %rem = srem i32 %add, 20, !taffo.info !105, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !103
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !61
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !107
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !108

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !109

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !110 !taffo.funinfo !111 !taffo.sourceFunction !60 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !110 !taffo.funinfo !114 !taffo.sourceFunction !60 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.3(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !70
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !88, !taffo.info !53
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !89, !taffo.info !53
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !117, !taffo.info !53
  %mul = fmul float %0, %beta, !taffo.initweight !88, !taffo.info !118
  store float %mul, float* %arrayidx4, align 4, !taffo.initweight !89, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !120

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !70
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !103
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !70
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !70
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !88, !taffo.info !55
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.initweight !89, !taffo.info !55
  %1 = load float, float* %arrayidx12, align 4, !taffo.initweight !117, !taffo.info !55
  %mul13 = fmul float %alpha, %1, !taffo.initweight !88, !taffo.info !121
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.initweight !88, !taffo.info !55
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.initweight !89, !taffo.info !55
  %2 = load float, float* %arrayidx15, align 4, !taffo.initweight !117, !taffo.info !55
  %mul16 = fmul float %mul13, %2, !taffo.initweight !89, !taffo.info !123
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.initweight !88, !taffo.info !53
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.initweight !89, !taffo.info !53
  %3 = load float, float* %arrayidx18, align 4, !taffo.initweight !117, !taffo.info !53
  %add = fadd float %3, %mul16, !taffo.initweight !117, !taffo.info !125
  store float %add, float* %arrayidx18, align 4, !taffo.initweight !117, !taffo.info !53
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !127

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !128

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !129

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !130 !taffo.funinfo !116 !taffo.sourceFunction !58 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !72, !taffo.info !49, !taffo.constinfo !80
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !72, !taffo.info !51, !taffo.constinfo !82
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !48, !taffo.info !131
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !62, !taffo.info !132
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !63, !taffo.info !85

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !133
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !62, !taffo.info !132
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !63, !taffo.info !87

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !62, !taffo.info !135
  %add = add nsw i32 %mul, 1, !taffo.initweight !63, !taffo.info !137, !taffo.constinfo !27
  %rem = srem i32 %add, %n, !taffo.initweight !72, !taffo.info !139
  %conv = sitofp i32 %rem to float, !taffo.initweight !88, !taffo.info !139
  %conv6 = sitofp i32 %n to float, !taffo.info !101
  %div = fdiv float %conv, %conv6, !taffo.initweight !89, !taffo.info !141
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !62, !taffo.info !143
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !62, !taffo.info !143
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !63, !taffo.info !90
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !62, !taffo.info !144, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !146

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !62, !taffo.info !147, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !148

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !48, !taffo.info !131
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.initweight !62, !taffo.info !132
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !63, !taffo.info !85

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !133
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.initweight !62, !taffo.info !149
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !63, !taffo.info !87

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.initweight !62, !taffo.info !135
  %add20 = add nsw i32 %mul19, 2, !taffo.initweight !63, !taffo.info !150, !taffo.constinfo !27
  %rem21 = srem i32 %add20, %m, !taffo.initweight !72, !taffo.info !152
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !88, !taffo.info !152
  %conv23 = sitofp i32 %m to float, !taffo.info !22
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !89, !taffo.info !154
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.initweight !62, !taffo.info !156
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !62, !taffo.info !156
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !63, !taffo.info !90
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !62, !taffo.info !144, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !157

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !62, !taffo.info !147, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !158

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !159 !taffo.funinfo !160 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !103
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !105
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !89, !taffo.info !53
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !117, !taffo.info !53
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !161, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !112
  %mul = fmul float %1, %conv, !taffo.initweight !162, !taffo.info !163
  %2 = mul nsw i32 %i.0, %m, !taffo.info !105
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !89, !taffo.info !53
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !117, !taffo.info !53
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !161, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !165

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !166

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !159 !taffo.funinfo !167 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !103
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !105
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !89, !taffo.info !55
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !117, !taffo.info !55
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !161, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !112
  %mul = fmul float %1, %conv, !taffo.initweight !162, !taffo.info !168
  %2 = mul nsw i32 %i.0, %m, !taffo.info !105
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !89, !taffo.info !55
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !117, !taffo.info !55
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !161, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !170

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !103, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !171

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
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40F9D4B840000000}
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
!38 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6}
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
!56 = !{double 0.000000e+00, double 1.200000e+02}
!57 = !{i32 1}
!58 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*)* @init_array}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = !{void (float*, i32)* @scale_scalar}
!61 = !{i1 false, i1 false, i1 false}
!62 = !{i32 2}
!63 = !{i32 3}
!64 = !{void (i32, i32, float*, i32)* @scale_2d}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{i1 false}
!67 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*)* @kernel_syrk}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.700000e+01}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.000000e+00}
!72 = !{i32 4}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.700000e+01}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!78 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!79 = !{void (i32, i32, float*, float*, [16 x float]*, [10 x float]*)* @init_array.4}
!80 = !{!81, i1 false}
!81 = !{i1 false, !50, i1 false, i2 0}
!82 = !{!83, i1 false}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!85 = !{i1 false, !86, i1 false, i2 1}
!86 = !{double 0.000000e+00, double 1.600000e+01}
!87 = !{i1 false, !9, i1 false, i2 1}
!88 = !{i32 5}
!89 = !{i32 6}
!90 = !{i1 false, i1 false, i1 false, i2 1}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = !{void (i32, i32, float, float, [16 x float]*, [10 x float]*)* @kernel_syrk.3}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = !{i32 1, !101, i32 1, !6}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 1.600000e+01, double 1.600000e+01}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.000000e+00, double 1.000000e+00}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 0.000000e+00, double 0.000000e+00}
!107 = !{i1 false, i1 false, i1 false, i1 false}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = !{i32 1, i32 -1}
!111 = !{i32 1, !49, i32 1, !112}
!112 = !{i1 false, !113, i1 false, i2 0}
!113 = !{double 1.280000e+02, double 1.280000e+02}
!114 = !{i32 1, !51, i32 1, !112}
!115 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!116 = !{i32 1, !101, i32 1, !22, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55}
!117 = !{i32 7}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x40FEFF4380000000}
!120 = distinct !{!120, !29}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 1.800000e+02}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 2.160000e+04}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x40FF1AB840000000}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!131 = !{i1 false, !69, i1 false, i2 1}
!132 = !{i1 false, !71, i1 false, i2 1}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 0.000000e+00, double 1.100000e+01}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.600000e+02}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 1.000000e+00, double 1.610000e+02}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 1.500000e+01}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double 0.000000e+00, double 9.375000e-01}
!143 = !{i1 false, !56, i1 false, i2 1}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 1.000000e+00, double 1.100000e+01}
!146 = distinct !{!146, !29}
!147 = !{i1 false, !74, i1 false, i2 1}
!148 = distinct !{!148, !29}
!149 = !{i1 false, !104, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 2.000000e+00, double 1.620000e+02}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 9.000000e+00}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 9.000000e-01}
!156 = !{i1 false, !7, i1 false, i2 1}
!157 = distinct !{!157, !29}
!158 = distinct !{!158, !29}
!159 = !{i32 -1, i32 -1, i32 3, i32 -1}
!160 = !{i32 1, !101, i32 1, !101, i32 1, !53, i32 1, !112}
!161 = !{i32 8}
!162 = !{i32 9}
!163 = !{i1 false, !164, i1 false, i2 -1}
!164 = !{double 0.000000e+00, double 0x4169D4B840000000}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, !29}
!167 = !{i32 1, !101, i32 1, !22, i32 1, !55, i32 1, !112}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 1.536000e+04}
!170 = distinct !{!170, !29}
!171 = distinct !{!171, !29}
