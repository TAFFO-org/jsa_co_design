; ModuleID = './build/bin/fixed/gesummv/11/gesummv-standard-4-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./sources/gesummv.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,3.75) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,70.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [48 x i8] c"target('y') scalar(range(0.0,181.200012) final)\00", section "llvm.metadata", !taffo.info !4
@y_float = dso_local global [16 x float] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [20 x i8] c"scalar(range(0,16))\00", section "llvm.metadata", !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 !taffo.equivalentChild !35 {
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
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !37 !taffo.funinfo !38 !taffo.equivalentChild !39 {
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
  br label %for.cond1, !llvm.loop !40

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !41

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !42 !taffo.funinfo !43 {
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
  br label %for.cond4, !llvm.loop !44

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !45

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !46

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !47 !taffo.funinfo !47 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !47 !taffo.funinfo !47 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !48 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !49, !taffo.info !50
  %beta = alloca float, align 4, !taffo.initweight !49, !taffo.info !52
  %A = alloca [16 x [16 x float]], align 4, !taffo.initweight !49, !taffo.info !54
  %B = alloca [16 x [16 x float]], align 4, !taffo.initweight !49, !taffo.info !54
  %tmp = alloca [16 x float], align 4, !taffo.initweight !49, !taffo.info !56
  %x = alloca [16 x float], align 4, !taffo.initweight !49, !taffo.info !54
  %y = alloca [16 x float], align 4, !taffo.initweight !49, !taffo.info !58, !taffo.target !59
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !60, !taffo.info !50
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !60, !taffo.info !52
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.initweight !60, !taffo.info !54
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.initweight !60, !taffo.info !54
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.initweight !60, !taffo.info !56
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.initweight !60, !taffo.info !54
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.initweight !60, !taffo.info !58, !taffo.target !59
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !60, !taffo.info !56
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !60, !taffo.info !58, !taffo.target !59
  call void @init_array.7(i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !60, !taffo.info !50, !taffo.originalCall !61, !taffo.constinfo !62
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 4), !taffo.initweight !60, !taffo.info !50, !taffo.originalCall !63, !taffo.constinfo !64
  call void @scale_scalar.2(float* noundef %beta, i32 noundef 4), !taffo.initweight !60, !taffo.info !52, !taffo.originalCall !63, !taffo.constinfo !64
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %0 = bitcast [16 x float]* %arraydecay12 to float*, !taffo.initweight !65, !taffo.info !54
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 4), !taffo.initweight !66, !taffo.info !54, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %1 = bitcast [16 x float]* %arraydecay13 to float*, !taffo.initweight !65, !taffo.info !54
  call void @scale_2d.9(i32 noundef 16, i32 noundef 16, float* noundef %1, i32 noundef 4), !taffo.initweight !66, !taffo.info !54, !taffo.originalCall !67, !taffo.constinfo !68
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !60, !taffo.info !56
  call void @scale_1d.3(i32 noundef 16, float* noundef %arraydecay14, i32 noundef 4), !taffo.initweight !65, !taffo.info !56, !taffo.originalCall !69, !taffo.constinfo !70
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  call void @scale_1d.4(i32 noundef 16, float* noundef %arraydecay15, i32 noundef 4), !taffo.initweight !65, !taffo.info !54, !taffo.originalCall !69, !taffo.constinfo !70
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !60, !taffo.info !58, !taffo.target !59
  call void @scale_1d.6(i32 noundef 16, float* noundef %arraydecay16, i32 noundef 4), !taffo.initweight !65, !taffo.info !58, !taffo.target !59, !taffo.originalCall !69, !taffo.constinfo !70
  call void @timer_start(), !taffo.constinfo !71
  %2 = load float, float* %alpha, align 4, !taffo.initweight !60, !taffo.info !50
  %3 = load float, float* %beta, align 4, !taffo.initweight !60, !taffo.info !52
  %arraydecay17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay19 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !60, !taffo.info !56
  %arraydecay20 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !60, !taffo.info !54
  %arraydecay21 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !60, !taffo.info !58, !taffo.target !59
  call void @kernel_gesummv.5(i32 noundef 16, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay17, [16 x float]* noundef %arraydecay18, float* noundef %arraydecay19, float* noundef %arraydecay20, float* noundef %arraydecay21), !taffo.initweight !65, !taffo.info !50, !taffo.originalCall !72, !taffo.constinfo !62
  call void @timer_stop(), !taffo.constinfo !71
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %i.0, !taffo.initweight !60, !taffo.info !58, !taffo.target !59
  %4 = load float, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !58, !taffo.target !59
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !6
  store float %4, float* %arrayidx22, align 4, !taffo.initweight !66, !taffo.info !58, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !64
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !42 !taffo.funinfo !43 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.equivalentChild !82 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !83
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !85
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.initweight !49, !taffo.info !88
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !65, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !66, !taffo.info !88

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !65, !taffo.info !88
  %conv = sitofp i32 %rem to float, !taffo.initweight !66, !taffo.info !88
  %conv3 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !90, !taffo.info !88
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !65, !taffo.info !91
  store float %div, float* %arrayidx, align 4, !taffo.initweight !66, !taffo.info !91
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !65, !taffo.info !91
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !66, !taffo.info !91, !taffo.constinfo !92
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !65, !taffo.info !91
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !66, !taffo.info !91, !taffo.constinfo !92
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !49, !taffo.info !88
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.initweight !65, !taffo.info !88
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !66, !taffo.info !88

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !65, !taffo.info !88
  %add = add nsw i32 %mul, 1, !taffo.initweight !66, !taffo.info !88, !taffo.constinfo !27
  %rem10 = srem i32 %add, %n, !taffo.initweight !90, !taffo.info !88
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !95, !taffo.info !88
  %conv12 = sitofp i32 %n to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !96, !taffo.info !88
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !91
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !65, !taffo.info !91
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !66, !taffo.info !91
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.initweight !65, !taffo.info !88
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !66, !taffo.info !88, !taffo.constinfo !27
  %rem18 = srem i32 %add17, %n, !taffo.initweight !90, !taffo.info !88
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !95, !taffo.info !88
  %conv20 = sitofp i32 %n to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !96, !taffo.info !88
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !65, !taffo.info !91
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.initweight !65, !taffo.info !91
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !66, !taffo.info !91
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !65, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !97

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.initweight !65, !taffo.info !88, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !98

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.equivalentChild !99 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !95, !taffo.info !91, !taffo.constinfo !92
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !95, !taffo.info !91, !taffo.constinfo !92
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0
  %1 = load float, float* %arrayidx7, align 4
  %mul = fmul float %0, %1
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0
  %2 = load float, float* %arrayidx8, align 4
  %add = fadd float %mul, %2
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0
  store float %add, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0
  %4 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %3, %4
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0
  %5 = load float, float* %arrayidx14, align 4
  %add15 = fadd float %mul13, %5
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0
  store float %add15, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !100

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0
  %6 = load float, float* %arrayidx17, align 4
  %mul18 = fmul float %alpha, %6
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0
  %7 = load float, float* %arrayidx19, align 4
  %mul20 = fmul float %beta, %7
  %add21 = fadd float %mul18, %mul20
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0
  store float %add21, float* %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !101

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !30 !taffo.funinfo !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !93, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !105
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !64
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !70
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !108 !taffo.funinfo !109 !taffo.sourceFunction !63 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.2(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !108 !taffo.funinfo !112 !taffo.sourceFunction !63 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !96, !taffo.info !56
  %conv = sitofp i32 %factor to float, !taffo.info !110
  %mul = fmul float %0, %conv, !taffo.initweight !115, !taffo.info !116
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !96, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !113 !taffo.funinfo !119 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !54
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !96, !taffo.info !54
  %conv = sitofp i32 %factor to float, !taffo.info !110
  %mul = fmul float %0, %conv, !taffo.initweight !115, !taffo.info !120
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !54
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !96, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !123 !taffo.funinfo !124 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !95, !taffo.info !91, !taffo.constinfo !92
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !95, !taffo.info !91, !taffo.constinfo !92
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !105
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !95, !taffo.info !54
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0, !taffo.initweight !96, !taffo.info !54
  %0 = load float, float* %arrayidx6, align 4, !taffo.initweight !115, !taffo.info !54
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !95, !taffo.info !54
  %1 = load float, float* %arrayidx7, align 4, !taffo.initweight !96, !taffo.info !54
  %mul = fmul float %0, %1, !taffo.initweight !115, !taffo.info !125
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  %2 = load float, float* %arrayidx8, align 4, !taffo.initweight !96, !taffo.info !56
  %add = fadd float %mul, %2, !taffo.initweight !115, !taffo.info !127
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  store float %add, float* %arrayidx9, align 4, !taffo.initweight !96, !taffo.info !56
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !95, !taffo.info !54
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !96, !taffo.info !54
  %3 = load float, float* %arrayidx11, align 4, !taffo.initweight !115, !taffo.info !54
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !95, !taffo.info !54
  %4 = load float, float* %arrayidx12, align 4, !taffo.initweight !96, !taffo.info !54
  %mul13 = fmul float %3, %4, !taffo.initweight !115, !taffo.info !125
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  %5 = load float, float* %arrayidx14, align 4, !taffo.initweight !96, !taffo.info !58
  %add15 = fadd float %mul13, %5, !taffo.initweight !115, !taffo.info !129
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  store float %add15, float* %arrayidx16, align 4, !taffo.initweight !96, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !131

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !95, !taffo.info !56
  %6 = load float, float* %arrayidx17, align 4, !taffo.initweight !96, !taffo.info !56
  %mul18 = fmul float %alpha, %6, !taffo.initweight !95, !taffo.info !132
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  %7 = load float, float* %arrayidx19, align 4, !taffo.initweight !96, !taffo.info !58
  %mul20 = fmul float %beta, %7, !taffo.initweight !95, !taffo.info !134
  %add21 = fadd float %mul18, %mul20, !taffo.initweight !96, !taffo.info !136
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  store float %add21, float* %arrayidx22, align 4, !taffo.initweight !96, !taffo.info !58
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !138

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !113 !taffo.funinfo !139 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !96, !taffo.info !58
  %conv = sitofp i32 %factor to float, !taffo.info !110
  %mul = fmul float %0, %conv, !taffo.initweight !115, !taffo.info !140
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !58
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !96, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !143 !taffo.funinfo !144 !taffo.sourceFunction !61 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !90, !taffo.info !50, !taffo.constinfo !83
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !90, !taffo.info !52, !taffo.constinfo !85
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.initweight !49, !taffo.info !145
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !65, !taffo.info !146
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !66, !taffo.info !88

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !65, !taffo.info !147
  %conv = sitofp i32 %rem to float, !taffo.initweight !66, !taffo.info !147
  %conv3 = sitofp i32 %n to float, !taffo.info !103
  %div = fdiv float %conv, %conv3, !taffo.initweight !90, !taffo.info !148
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !65, !taffo.info !150
  store float %div, float* %arrayidx, align 4, !taffo.initweight !66, !taffo.info !91
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !65, !taffo.info !151
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !66, !taffo.info !91, !taffo.constinfo !92
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !65, !taffo.info !152
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !66, !taffo.info !91, !taffo.constinfo !92
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !49, !taffo.info !145
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.initweight !65, !taffo.info !146
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !66, !taffo.info !88

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !65, !taffo.info !153
  %add = add nsw i32 %mul, 1, !taffo.initweight !66, !taffo.info !155, !taffo.constinfo !27
  %rem10 = srem i32 %add, %n, !taffo.initweight !90, !taffo.info !147
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !95, !taffo.info !147
  %conv12 = sitofp i32 %n to float, !taffo.info !103
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !96, !taffo.info !148
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !150
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !65, !taffo.info !150
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !66, !taffo.info !91
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.initweight !65, !taffo.info !153
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !66, !taffo.info !157, !taffo.constinfo !27
  %rem18 = srem i32 %add17, %n, !taffo.initweight !90, !taffo.info !147
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !95, !taffo.info !147
  %conv20 = sitofp i32 %n to float, !taffo.info !103
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !96, !taffo.info !148
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !65, !taffo.info !150
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.initweight !65, !taffo.info !150
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !66, !taffo.info !91
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !65, !taffo.info !159, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !160

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.initweight !65, !taffo.info !159, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !161

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !96, !taffo.info !54
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !115, !taffo.info !54
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !164, !taffo.info !54
  %conv = sitofp i32 %factor to float, !taffo.info !110
  %mul = fmul float %1, %conv, !taffo.initweight !165, !taffo.info !120
  %2 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !96, !taffo.info !54
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !115, !taffo.info !54
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !164, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !166

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !167

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !105
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !96, !taffo.info !54
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !115, !taffo.info !54
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !164, !taffo.info !54
  %conv = sitofp i32 %factor to float, !taffo.info !110
  %mul = fmul float %1, %conv, !taffo.initweight !165, !taffo.info !120
  %2 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !96, !taffo.info !54
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !115, !taffo.info !54
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !164, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !168

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !105, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !169

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
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.210000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x4066A6667F90D9D7}
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
!35 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.6}
!36 = distinct !{!36, !29}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = !{void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.9}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!43 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = !{}
!48 = !{i1 true}
!49 = !{i32 0}
!50 = !{i1 false, !51, i1 false, i2 -1}
!51 = !{double 1.500000e+00, double 1.500000e+00}
!52 = !{i1 false, !53, i1 false, i2 -1}
!53 = !{double 1.200000e+00, double 1.200000e+00}
!54 = !{i1 false, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 3.750000e+00}
!56 = !{i1 false, !57, i1 false, i2 -1}
!57 = !{double 0.000000e+00, double 7.050000e+01}
!58 = !{i1 false, !7, i1 false, i2 -1}
!59 = !{!"y"}
!60 = !{i32 1}
!61 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{void (float*, i32)* @scale_scalar}
!64 = !{i1 false, i1 false, i1 false}
!65 = !{i32 2}
!66 = !{i32 3}
!67 = !{void (i32, i32, float*, i32)* @scale_2d}
!68 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!69 = !{void (i32, float*, i32)* @scale_1d}
!70 = !{i1 false, i1 false, i1 false, i1 false}
!71 = !{i1 false}
!72 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.700000e+01}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.000000e+00}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.000000e+00, double 1.700000e+01}
!79 = distinct !{!79, !29}
!80 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!81 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!82 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array.7}
!83 = !{!84, i1 false}
!84 = !{i1 false, !51, i1 false, i2 0}
!85 = !{!86, i1 false}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!88 = !{i1 false, !89, i1 false, i2 1}
!89 = !{double 0.000000e+00, double 1.600000e+01}
!90 = !{i32 4}
!91 = !{i1 false, i1 false, i1 false, i2 1}
!92 = !{!93, i1 false}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 0.000000e+00}
!95 = !{i32 5}
!96 = !{i32 6}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv.5}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = !{i32 1, !103, i32 1, !6}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.600000e+01, double 1.600000e+01}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.000000e+00, double 1.000000e+00}
!107 = distinct !{!107, !29}
!108 = !{i32 1, i32 -1}
!109 = !{i32 1, !50, i32 1, !110}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 4.000000e+00, double 4.000000e+00}
!112 = !{i32 1, !52, i32 1, !110}
!113 = !{i32 -1, i32 2, i32 -1}
!114 = !{i32 1, !103, i32 1, !56, i32 1, !110}
!115 = !{i32 7}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 2.820000e+02}
!118 = distinct !{!118, !29}
!119 = !{i32 1, !103, i32 1, !54, i32 1, !110}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 1.500000e+01}
!122 = distinct !{!122, !29}
!123 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!124 = !{i32 1, !103, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !54, i32 1, !56, i32 1, !54, i32 1, !58}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 1.406250e+01}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 8.456250e+01}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 0x406868667F90D9D7}
!131 = distinct !{!131, !29}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 1.057500e+02}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 0.000000e+00, double 0x406B2E149914389B}
!136 = !{i1 false, !137, i1 false, i2 -1}
!137 = !{double 0.000000e+00, double 0x4074330A4C8A1C4E}
!138 = distinct !{!138, !29}
!139 = !{i32 1, !103, i32 1, !58, i32 1, !110}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double 0.000000e+00, double 0x4086A6667F90D9D7}
!142 = distinct !{!142, !29}
!143 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!144 = !{i32 1, !103, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !54, i32 1, !54, i32 1, !56, i32 1, !58}
!145 = !{i1 false, !74, i1 false, i2 1}
!146 = !{i1 false, !76, i1 false, i2 1}
!147 = !{i1 false, !121, i1 false, i2 1}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 9.375000e-01}
!150 = !{i1 false, !55, i1 false, i2 1}
!151 = !{i1 false, !7, i1 false, i2 1}
!152 = !{i1 false, !57, i1 false, i2 1}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double 0.000000e+00, double 2.560000e+02}
!155 = !{i1 false, !156, i1 false, i2 1}
!156 = !{double 1.000000e+00, double 2.570000e+02}
!157 = !{i1 false, !158, i1 false, i2 1}
!158 = !{double 2.000000e+00, double 2.580000e+02}
!159 = !{i1 false, !78, i1 false, i2 1}
!160 = distinct !{!160, !29}
!161 = distinct !{!161, !29}
!162 = !{i32 -1, i32 -1, i32 3, i32 -1}
!163 = !{i32 1, !103, i32 1, !103, i32 1, !54, i32 1, !110}
!164 = !{i32 8}
!165 = !{i32 9}
!166 = distinct !{!166, !29}
!167 = distinct !{!167, !29}
!168 = distinct !{!168, !29}
!169 = distinct !{!169, !29}
