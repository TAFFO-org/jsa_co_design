; ModuleID = './build/bin/fixed/bicg/11/bicg-standard-256-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,244.363632) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/bicg.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [50 x i8] c"target('s') scalar(range(0.0,448325.84375) final)\00", section "llvm.metadata", !taffo.info !4
@.str.3 = private unnamed_addr constant [50 x i8] c"target('q') scalar(range(0.0,396194.90625) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [36 x i8] c"scalar(range(0.0,243.199997) final)\00", section "llvm.metadata", !taffo.info !0
@s_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@q_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !8
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 22))\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !10
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !12

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !21 !taffo.funinfo !22 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !23
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !26
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 !taffo.equivalentChild !36 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !38 !taffo.funinfo !39 !taffo.equivalentChild !40 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !41

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !42

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !43 !taffo.funinfo !44 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !29
  br label %for.cond4, !llvm.loop !45

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !46

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !47

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !48 !taffo.funinfo !48 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !48 !taffo.funinfo !48 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.start !49 {
entry:
  %A = alloca [22 x [20 x float]], align 4, !taffo.initweight !50, !taffo.info !51
  %s = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !53, !taffo.target !54
  %q = alloca [22 x float], align 4, !taffo.initweight !50, !taffo.info !55, !taffo.target !56
  %p = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !57
  %r = alloca [22 x float], align 4, !taffo.initweight !50, !taffo.info !51
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.initweight !59, !taffo.info !51
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.initweight !59, !taffo.info !57
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.initweight !59, !taffo.info !51
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  call void @init_array.6(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !60, !taffo.info !51, !taffo.originalCall !61, !taffo.constinfo !62
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !60, !taffo.info !51
  call void @scale_2d.7(i32 noundef 22, i32 noundef 20, float* noundef %0, i32 noundef 256), !taffo.initweight !63, !taffo.info !51, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 256), !taffo.initweight !60, !taffo.info !53, !taffo.target !54, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  call void @scale_1d.2(i32 noundef 22, float* noundef %arraydecay12, i32 noundef 256), !taffo.initweight !60, !taffo.info !55, !taffo.target !56, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 256), !taffo.initweight !60, !taffo.info !57, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  call void @scale_1d.5(i32 noundef 22, float* noundef %arraydecay14, i32 noundef 256), !taffo.initweight !60, !taffo.info !51, !taffo.originalCall !66, !taffo.constinfo !67
  call void @timer_start(), !taffo.constinfo !68
  %arraydecay15 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %arraydecay17 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  %arraydecay19 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  call void @kernel_bicg.4(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !60, !taffo.info !51, !taffo.originalCall !69, !taffo.constinfo !62
  call void @timer_stop(), !taffo.constinfo !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !53, !taffo.target !54
  %1 = load float, float* %arrayidx, align 4, !taffo.initweight !60, !taffo.info !53, !taffo.target !54
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !6
  store float %1, float* %arrayidx20, align 4, !taffo.initweight !63, !taffo.info !53, !taffo.target !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end
  %i21.0 = phi i32 [ 0, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !77
  %cmp23 = icmp slt i32 %i21.0, 22, !taffo.info !72
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %arrayidx25 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %i21.0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %2 = load float, float* %arrayidx25, align 4, !taffo.initweight !60, !taffo.info !55, !taffo.target !56
  %arrayidx26 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i21.0, !taffo.info !8
  store float %2, float* %arrayidx26, align 4, !taffo.initweight !63, !taffo.info !55, !taffo.target !56
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %inc28 = add nsw i32 %i21.0, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond22, !llvm.loop !81

for.end29:                                        ; preds = %for.cond22
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !43 !taffo.funinfo !44 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.equivalentChild !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !50, !taffo.info !85
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !60, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !63, !taffo.info !85

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.initweight !60, !taffo.info !85
  %conv = sitofp i32 %rem to float, !taffo.initweight !63, !taffo.info !85
  %conv3 = sitofp i32 %m to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !87, !taffo.info !85
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.initweight !60, !taffo.info !88
  store float %div, float* %arrayidx, align 4, !taffo.initweight !63, !taffo.info !88
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !60, !taffo.info !88
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !85, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.initweight !50, !taffo.info !85
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.initweight !60, !taffo.info !85
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !63, !taffo.info !85

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.initweight !60, !taffo.info !85
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !63, !taffo.info !85
  %conv11 = sitofp i32 %n to float
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !87, !taffo.info !85
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !60, !taffo.info !88
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !63, !taffo.info !88
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !60, !taffo.info !88
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !89
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.initweight !50, !taffo.info !93
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.initweight !60, !taffo.info !93
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !63, !taffo.info !93

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !93, !taffo.constinfo !29
  %mul = mul nsw i32 %i.1, %add, !taffo.initweight !60, !taffo.info !85
  %rem19 = srem i32 %mul, %n, !taffo.initweight !63, !taffo.info !85
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !87, !taffo.info !85
  %conv21 = sitofp i32 %n to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !95, !taffo.info !85
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !88
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !88
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !63, !taffo.info !88
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond15, !llvm.loop !96

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !85, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !97

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.equivalentChild !98 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %m
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !95, !taffo.info !88, !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ]
  %cmp2 = icmp slt i32 %i.1, %n
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !95, !taffo.info !88, !taffo.constinfo !89
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ]
  %cmp6 = icmp slt i32 %j.0, %m
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0
  %0 = load float, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1
  %1 = load float, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx11, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0
  store float %add, float* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1
  %3 = load float, float* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0
  %4 = load float, float* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0
  %5 = load float, float* %arrayidx16, align 4
  %mul17 = fmul float %4, %5
  %add18 = fadd float %3, %mul17
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1
  store float %add18, float* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !100

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !101

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !38 !taffo.funinfo !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !90, !taffo.constinfo !29
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !107
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !109
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !72
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !107
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !90, !taffo.constinfo !29
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !107
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !109
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !8
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !8
  %conv14 = fpext float %5 to double, !taffo.info !8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !67
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond3, !llvm.loop !111

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !32 !taffo.funinfo !33 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !112 !taffo.funinfo !113 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !53
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !116, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !114
  %mul = fmul float %0, %conv, !taffo.initweight !117, !taffo.info !118
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !53
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !116, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !112 !taffo.funinfo !121 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !55
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !116, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !114
  %mul = fmul float %0, %conv, !taffo.initweight !117, !taffo.info !122
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !55
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !116, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !112 !taffo.funinfo !125 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !57
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !116, !taffo.info !57
  %conv = sitofp i32 %factor to float, !taffo.info !114
  %mul = fmul float %0, %conv, !taffo.initweight !117, !taffo.info !126
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !57
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !116, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !129 !taffo.funinfo !130 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !95, !taffo.info !53
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !95, !taffo.info !88, !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !72
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !107
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !95, !taffo.info !55
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !95, !taffo.info !88, !taffo.constinfo !89
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !72
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !107
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !116, !taffo.info !53
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !95, !taffo.info !51
  %1 = load float, float* %arrayidx9, align 4, !taffo.initweight !116, !taffo.info !51
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !95, !taffo.info !51
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !116, !taffo.info !51
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !117, !taffo.info !51
  %mul = fmul float %1, %2, !taffo.initweight !117, !taffo.info !132
  %add = fadd float %0, %mul, !taffo.initweight !117, !taffo.info !134
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !116, !taffo.info !53
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !95, !taffo.info !55
  %3 = load float, float* %arrayidx13, align 4, !taffo.initweight !116, !taffo.info !55
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !95, !taffo.info !51
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !116, !taffo.info !51
  %4 = load float, float* %arrayidx15, align 4, !taffo.initweight !117, !taffo.info !51
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0, !taffo.initweight !95, !taffo.info !57
  %5 = load float, float* %arrayidx16, align 4, !taffo.initweight !116, !taffo.info !57
  %mul17 = fmul float %4, %5, !taffo.initweight !117, !taffo.info !136
  %add18 = fadd float %3, %mul17, !taffo.initweight !117, !taffo.info !138
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !95, !taffo.info !55
  store float %add18, float* %arrayidx19, align 4, !taffo.initweight !116, !taffo.info !55
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !140

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !141

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !112 !taffo.funinfo !142 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !51
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !116, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !114
  %mul = fmul float %0, %conv, !taffo.initweight !117, !taffo.info !143
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !95, !taffo.info !51
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !116, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !129 !taffo.funinfo !146 !taffo.sourceFunction !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !50, !taffo.info !147
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !60, !taffo.info !148
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !63, !taffo.info !85

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.initweight !60, !taffo.info !149
  %conv = sitofp i32 %rem to float, !taffo.initweight !63, !taffo.info !149
  %conv3 = sitofp i32 %m to float, !taffo.info !103
  %div = fdiv float %conv, %conv3, !taffo.initweight !87, !taffo.info !151
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.initweight !60, !taffo.info !153
  store float %div, float* %arrayidx, align 4, !taffo.initweight !63, !taffo.info !88
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.initweight !60, !taffo.info !154
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !155, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.initweight !50, !taffo.info !147
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.initweight !60, !taffo.info !148
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.initweight !63, !taffo.info !85

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.initweight !60, !taffo.info !157
  %conv10 = sitofp i32 %rem9 to float, !taffo.initweight !63, !taffo.info !157
  %conv11 = sitofp i32 %n to float, !taffo.info !105
  %div12 = fdiv float %conv10, %conv11, !taffo.initweight !87, !taffo.info !158
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.initweight !60, !taffo.info !160
  store float %div12, float* %arrayidx13, align 4, !taffo.initweight !63, !taffo.info !88
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.initweight !60, !taffo.info !161
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !63, !taffo.info !88, !taffo.constinfo !89
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.initweight !50, !taffo.info !157
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.initweight !60, !taffo.info !148
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.initweight !63, !taffo.info !93

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !162, !taffo.constinfo !29
  %mul = mul nsw i32 %i.1, %add, !taffo.initweight !60, !taffo.info !163
  %rem19 = srem i32 %mul, %n, !taffo.initweight !63, !taffo.info !157
  %conv20 = sitofp i32 %rem19 to float, !taffo.initweight !87, !taffo.info !157
  %conv21 = sitofp i32 %n to float, !taffo.info !105
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !95, !taffo.info !158
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !160
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !160
  store float %div22, float* %arrayidx24, align 4, !taffo.initweight !63, !taffo.info !88
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !162, !taffo.constinfo !29
  br label %for.cond15, !llvm.loop !165

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !155, !taffo.constinfo !29
  br label %for.cond5, !llvm.loop !166

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !167 !taffo.funinfo !168 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !107
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !116, !taffo.info !51
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !117, !taffo.info !51
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !169, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !114
  %mul = fmul float %1, %conv, !taffo.initweight !170, !taffo.info !143
  %2 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !116, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !117, !taffo.info !51
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !169, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !171

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !172

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x411B5D1760000000}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0x41182E8BA0000000}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.000000e+01}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.020000e+02}
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
!23 = !{i1 false, !24}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+01, double 1.000000e+01}
!26 = !{!27, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 2.000000e+00, double 2.000000e+00}
!29 = !{i1 false, i1 false}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false}
!34 = !{i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.5}
!37 = distinct !{!37, !31}
!38 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{void (i32, i32, float*, i32)* @scale_2d.7}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
!43 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!44 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = !{}
!49 = !{i1 true}
!50 = !{i32 0}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 0.000000e+00, double 0x406E8BA2DF9378EE}
!53 = !{i1 false, !7, i1 false, i2 -1}
!54 = !{!"s"}
!55 = !{i1 false, !9, i1 false, i2 -1}
!56 = !{!"q"}
!57 = !{i1 false, !58, i1 false, i2 -1}
!58 = !{double 0.000000e+00, double 0x406E6666601BC98A}
!59 = !{i32 1}
!60 = !{i32 2}
!61 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{i32 3}
!64 = !{void (i32, i32, float*, i32)* @scale_2d}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{void (i32, float*, i32)* @scale_1d}
!67 = !{i1 false, i1 false, i1 false, i1 false}
!68 = !{i1 false}
!69 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 2.100000e+01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 2.100000e+01}
!76 = distinct !{!76, !31}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 0.000000e+00, double 2.300000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 2.300000e+01}
!81 = distinct !{!81, !31}
!82 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!83 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!84 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @init_array.6}
!85 = !{i1 false, !86, i1 false, i2 1}
!86 = !{double 0.000000e+00, double 2.200000e+01}
!87 = !{i32 4}
!88 = !{i1 false, i1 false, i1 false, i2 1}
!89 = !{!90, i1 false}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 0.000000e+00}
!92 = distinct !{!92, !31}
!93 = !{i1 false, !94, i1 false, i2 1}
!94 = !{double 0.000000e+00, double 2.000000e+01}
!95 = !{i32 5}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = !{void (i32, i32, [20 x float]*, float*, float*, float*, float*)* @kernel_bicg.4}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = !{i32 1, !103, i32 1, !105, i32 1, !6, i32 1, !8}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 2.000000e+01, double 2.000000e+01}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 2.200000e+01, double 2.200000e+01}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 1.000000e+00, double 1.000000e+00}
!109 = !{i1 false, i1 false, i1 false}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = !{i32 -1, i32 2, i32 -1}
!113 = !{i32 1, !103, i32 1, !53, i32 1, !114}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 2.560000e+02, double 2.560000e+02}
!116 = !{i32 6}
!117 = !{i32 7}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x419B5D1760000000}
!120 = distinct !{!120, !31}
!121 = !{i32 1, !105, i32 1, !55, i32 1, !114}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x41982E8BA0000000}
!124 = distinct !{!124, !31}
!125 = !{i32 1, !103, i32 1, !57, i32 1, !114}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x40EE6666601BC98A}
!128 = distinct !{!128, !31}
!129 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!130 = !{i32 1, !103, i32 1, !105, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !51}
!131 = distinct !{!131, !31}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x40ED2832B567D1B8}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 0.000000e+00, double 0x411F021DB6ACFA37}
!136 = !{i1 false, !137, i1 false, i2 -1}
!137 = !{double 0.000000e+00, double 0x40ED04A781977EE8}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 0x411BCF209032EFDD}
!140 = distinct !{!140, !31}
!141 = distinct !{!141, !31}
!142 = !{i32 1, !105, i32 1, !51, i32 1, !114}
!143 = !{i1 false, !144, i1 false, i2 -1}
!144 = !{double 0.000000e+00, double 0x40EE8BA2DF9378EE}
!145 = distinct !{!145, !31}
!146 = !{i32 1, !103, i32 1, !105, i32 1, !51, i32 1, !51, i32 1, !57, i32 1, !53, i32 1, !55}
!147 = !{i1 false, !78, i1 false, i2 1}
!148 = !{i1 false, !73, i1 false, i2 1}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 0.000000e+00, double 1.900000e+01}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 0.000000e+00, double 0x3FEE666666666666}
!153 = !{i1 false, !58, i1 false, i2 1}
!154 = !{i1 false, !7, i1 false, i2 1}
!155 = !{i1 false, !80, i1 false, i2 1}
!156 = distinct !{!156, !31}
!157 = !{i1 false, !71, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!160 = !{i1 false, !52, i1 false, i2 1}
!161 = !{i1 false, !9, i1 false, i2 1}
!162 = !{i1 false, !75, i1 false, i2 1}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 0.000000e+00, double 4.620000e+02}
!165 = distinct !{!165, !31}
!166 = distinct !{!166, !31}
!167 = !{i32 -1, i32 -1, i32 3, i32 -1}
!168 = !{i32 1, !105, i32 1, !103, i32 1, !51, i32 1, !114}
!169 = !{i32 8}
!170 = !{i32 9}
!171 = distinct !{!171, !31}
!172 = distinct !{!172, !31}
