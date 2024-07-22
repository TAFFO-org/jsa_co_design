; ModuleID = './build/bin/fixed/atax/16/atax-standard-512-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,107.519997) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [39 x i8] c"scalar(range(512.0,1000.727295) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [50 x i8] c"target('y') scalar(range(0.0,1032335680.0) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [37 x i8] c"scalar(range(0.0,1000079.375) final)\00", section "llvm.metadata", !taffo.info !0
@y_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !6
@.str.5 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 22) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !34 {
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
  %A = alloca [20 x [22 x float]], align 4, !taffo.initweight !48, !taffo.info !49
  %x = alloca [22 x float], align 4, !taffo.initweight !48, !taffo.info !51
  %y = alloca [22 x float], align 4, !taffo.initweight !48, !taffo.info !53, !taffo.target !54
  %tmp = alloca [20 x float], align 4, !taffo.initweight !48, !taffo.info !55
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.initweight !57, !taffo.info !49
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.initweight !57, !taffo.info !51
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.initweight !57, !taffo.info !55
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !49
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  call void @init_array.5(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !58, !taffo.info !49, !taffo.originalCall !59, !taffo.constinfo !60
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !49
  %0 = bitcast [22 x float]* %arraydecay8 to float*, !taffo.initweight !58, !taffo.info !49
  call void @scale_2d.6(i32 noundef 20, i32 noundef 22, float* noundef %0, i32 noundef 512), !taffo.initweight !61, !taffo.info !49, !taffo.originalCall !62, !taffo.constinfo !63
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  call void @scale_1d.1(i32 noundef 22, float* noundef %arraydecay9, i32 noundef 512), !taffo.initweight !58, !taffo.info !51, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  call void @scale_1d.2(i32 noundef 22, float* noundef %arraydecay10, i32 noundef 512), !taffo.initweight !58, !taffo.info !53, !taffo.target !54, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 512), !taffo.initweight !58, !taffo.info !55, !taffo.originalCall !64, !taffo.constinfo !65
  call void @timer_start(), !taffo.constinfo !66
  %arraydecay12 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !49
  %arraydecay13 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55
  call void @kernel_atax.3(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15), !taffo.initweight !58, !taffo.info !49, !taffo.originalCall !67, !taffo.constinfo !60
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %i.0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %1 = load float, float* %arrayidx, align 4, !taffo.initweight !58, !taffo.info !53, !taffo.target !54
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !6
  store float %1, float* %arrayidx16, align 4, !taffo.initweight !61, !taffo.info !53, !taffo.target !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !75
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.equivalentChild !78 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !58, !taffo.info !79
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !58, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !61, !taffo.info !80

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !58, !taffo.info !80
  %div = fdiv float %conv5, %conv, !taffo.initweight !58, !taffo.info !79
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !82
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !58, !taffo.info !79
  store float %add, float* %arrayidx, align 4, !taffo.initweight !61, !taffo.info !79
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !58, !taffo.info !79
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.initweight !48, !taffo.info !80
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.initweight !58, !taffo.info !80
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !61, !taffo.info !80

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !58, !taffo.info !79
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !85
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.initweight !48, !taffo.info !80
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.initweight !58, !taffo.info !80
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !61, !taffo.info !80

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.initweight !58, !taffo.info !80
  %rem = srem i32 %add16, %n, !taffo.initweight !61, !taffo.info !80
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !89, !taffo.info !80
  %mul = mul nsw i32 5, %m, !taffo.constinfo !27
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !90, !taffo.info !80
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !58, !taffo.info !79
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.initweight !58, !taffo.info !79
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.initweight !58, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !91

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.initweight !58, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !92

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.equivalentChild !93 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !90, !taffo.info !79, !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ]
  %cmp2 = icmp slt i32 %i.1, %m
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !79, !taffo.constinfo !85
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ]
  %cmp6 = icmp slt i32 %j.0, %n
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.1
  %0 = load float, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds float, float* %x, i32 %j.0
  %2 = load float, float* %arrayidx11, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx12 = getelementptr inbounds float, float* %tmp, i32 %i.1
  store float %add, float* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !95

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ]
  %cmp17 = icmp slt i32 %j.1, %n
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %j.1
  %3 = load float, float* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.1
  %4 = load float, float* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds float, float* %tmp, i32 %i.1
  %5 = load float, float* %arrayidx22, align 4
  %mul23 = fmul float %4, %5
  %add24 = fadd float %3, %mul23
  %arrayidx25 = getelementptr inbounds float, float* %y, i32 %j.1
  store float %add24, float* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !96

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !97

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !30 !taffo.funinfo !98 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !86, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !83
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !65
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !102 !taffo.funinfo !103 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !51
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !106, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !104
  %mul = fmul float %0, %conv, !taffo.initweight !107, !taffo.info !108
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !51
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !106, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !102 !taffo.funinfo !111 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !53
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !106, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !104
  %mul = fmul float %0, %conv, !taffo.initweight !107, !taffo.info !112
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !53
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !106, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !90, !taffo.info !53
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !90, !taffo.info !79, !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !70
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !90, !taffo.info !55
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !90, !taffo.info !79, !taffo.constinfo !85
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !70
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !83
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !90, !taffo.info !55
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !106, !taffo.info !55
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !106, !taffo.info !49
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !107, !taffo.info !49
  %arrayidx11 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !90, !taffo.info !51
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !106, !taffo.info !51
  %mul = fmul float %1, %2, !taffo.initweight !107, !taffo.info !120
  %add = fadd float %0, %mul, !taffo.initweight !107, !taffo.info !122
  %arrayidx12 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !90, !taffo.info !55
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !106, !taffo.info !55
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !124

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !70
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !83
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !90, !taffo.info !53
  %3 = load float, float* %arrayidx19, align 4, !taffo.initweight !106, !taffo.info !53
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.1, !taffo.initweight !106, !taffo.info !49
  %4 = load float, float* %arrayidx21, align 4, !taffo.initweight !107, !taffo.info !49
  %arrayidx22 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !90, !taffo.info !55
  %5 = load float, float* %arrayidx22, align 4, !taffo.initweight !106, !taffo.info !55
  %mul23 = fmul float %4, %5, !taffo.initweight !107, !taffo.info !125
  %add24 = fadd float %3, %mul23, !taffo.initweight !107, !taffo.info !127
  %arrayidx25 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !90, !taffo.info !53
  store float %add24, float* %arrayidx25, align 4, !taffo.initweight !106, !taffo.info !53
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !129

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !130

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !102 !taffo.funinfo !131 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !55
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !106, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !104
  %mul = fmul float %0, %conv, !taffo.initweight !107, !taffo.info !132
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !55
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !106, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !134

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !59 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !58, !taffo.info !135
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !58, !taffo.info !136
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !61, !taffo.info !80

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !58, !taffo.info !80
  %div = fdiv float %conv5, %conv, !taffo.initweight !58, !taffo.info !137
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !61, !taffo.info !138, !taffo.constinfo !82
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !58, !taffo.info !140
  store float %add, float* %arrayidx, align 4, !taffo.initweight !61, !taffo.info !79
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !58, !taffo.info !141
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !142, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !143

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.initweight !48, !taffo.info !80
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.initweight !58, !taffo.info !136
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !61, !taffo.info !80

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !58, !taffo.info !144
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !61, !taffo.info !79, !taffo.constinfo !85
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.initweight !48, !taffo.info !80
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.initweight !58, !taffo.info !136
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !61, !taffo.info !80

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.initweight !58, !taffo.info !145
  %rem = srem i32 %add16, %n, !taffo.initweight !61, !taffo.info !147
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !89, !taffo.info !147
  %mul = mul nsw i32 5, %m, !taffo.info !149, !taffo.constinfo !27
  %conv18 = sitofp i32 %mul to float, !taffo.info !149
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !90, !taffo.info !151
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !58, !taffo.info !153
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.initweight !58, !taffo.info !153
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !61, !taffo.info !79
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.initweight !58, !taffo.info !142, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !154

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.initweight !58, !taffo.info !142, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !155

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !156 !taffo.funinfo !157 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !83
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !106, !taffo.info !49
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !107, !taffo.info !49
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !158, !taffo.info !49
  %conv = sitofp i32 %factor to float, !taffo.info !104
  %mul = fmul float %1, %conv, !taffo.initweight !159, !taffo.info !160
  %2 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !106, !taffo.info !49
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !107, !taffo.info !49
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !158, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !162

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !163

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
!3 = !{double 0.000000e+00, double 1.200000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.210000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x41CEC418A0000000}
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
!32 = !{i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.4}
!35 = distinct !{!35, !29}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{void (i32, i32, float*, i32)* @scale_2d.6}
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
!50 = !{double 0.000000e+00, double 0x405AE147A17F4129}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 5.120000e+02, double 0x408F45D1800A7C5B}
!53 = !{i1 false, !7, i1 false, i2 -1}
!54 = !{!"y"}
!55 = !{i1 false, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x412E851EC0000000}
!57 = !{i32 1}
!58 = !{i32 2}
!59 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i32 3}
!62 = !{void (i32, i32, float*, i32)* @scale_2d}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{void (i32, float*, i32)* @scale_1d}
!65 = !{i1 false, i1 false, i1 false, i1 false}
!66 = !{i1 false}
!67 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 2.300000e+01}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 2.300000e+01}
!74 = distinct !{!74, !29}
!75 = !{i1 false, i1 false, i1 false}
!76 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!77 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!78 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array.5}
!79 = !{i1 false, i1 false, i1 false, i2 1}
!80 = !{i1 false, !81, i1 false, i2 -1}
!81 = !{double 0.000000e+00, double 2.200000e+01}
!82 = !{!83, i1 false}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e+00, double 1.000000e+00}
!85 = !{!86, i1 false}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 0.000000e+00, double 0.000000e+00}
!88 = distinct !{!88, !29}
!89 = !{i32 4}
!90 = !{i32 5}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax.3}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = !{i32 1, !99, i32 1, !6}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 2.200000e+01, double 2.200000e+01}
!101 = distinct !{!101, !29}
!102 = !{i32 -1, i32 2, i32 -1}
!103 = !{i32 1, !99, i32 1, !51, i32 1, !104}
!104 = !{i1 false, !105, i1 false, i2 0}
!105 = !{double 5.120000e+02, double 5.120000e+02}
!106 = !{i32 6}
!107 = !{i32 7}
!108 = !{i1 false, !109, i1 false, i2 -1}
!109 = !{double 2.621440e+05, double 0x411F45D1800A7C5B}
!110 = distinct !{!110, !29}
!111 = !{i32 1, !99, i32 1, !53, i32 1, !104}
!112 = !{i1 false, !113, i1 false, i2 -1}
!113 = !{double 0.000000e+00, double 0x425EC418A0000000}
!114 = distinct !{!114, !29}
!115 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!116 = !{i32 1, !117, i32 1, !99, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 2.000000e+01, double 2.000000e+01}
!119 = distinct !{!119, !29}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x40FA44E321D145AD}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x4130E6DD921D145B}
!124 = distinct !{!124, !29}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x4199A3054D995B2E}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x41D0FC3CA4D995B3}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = !{i32 1, !117, i32 1, !55, i32 1, !104}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x41BE851EC0000000}
!134 = distinct !{!134, !29}
!135 = !{i1 false, !100, i1 false, i2 1}
!136 = !{i1 false, !71, i1 false, i2 -1}
!137 = !{i1 false, !71, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 1.000000e+00, double 2.000000e+00}
!140 = !{i1 false, !52, i1 false, i2 1}
!141 = !{i1 false, !7, i1 false, i2 1}
!142 = !{i1 false, !73, i1 false, i2 -1}
!143 = distinct !{!143, !29}
!144 = !{i1 false, !56, i1 false, i2 1}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double 0.000000e+00, double 4.400000e+01}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double 0.000000e+00, double 2.100000e+01}
!149 = !{i1 false, !150, i1 false, i2 0}
!150 = !{double 1.000000e+02, double 1.000000e+02}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 2.100000e-01}
!153 = !{i1 false, !50, i1 false, i2 1}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !29}
!156 = !{i32 -1, i32 -1, i32 3, i32 -1}
!157 = !{i32 1, !117, i32 1, !99, i32 1, !49, i32 1, !104}
!158 = !{i32 8}
!159 = !{i32 9}
!160 = !{i1 false, !161, i1 false, i2 -1}
!161 = !{double 0.000000e+00, double 0x40EAE147A17F4129}
!162 = distinct !{!162, !29}
!163 = distinct !{!163, !29}
