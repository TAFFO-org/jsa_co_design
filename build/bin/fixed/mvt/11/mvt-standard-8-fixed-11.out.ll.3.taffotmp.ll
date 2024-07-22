; ModuleID = './build/bin/fixed/mvt/11/mvt-standard-8-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,7.6) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [49 x i8] c"target('x1') scalar(range(0.0,320.399994) final)\00", section "llvm.metadata", !taffo.info !4
@.str.3 = private unnamed_addr constant [49 x i8] c"target('x2') scalar(range(0.0,322.399994) final)\00", section "llvm.metadata", !taffo.info !4
@x1_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@x2_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !8
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !10
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !12

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
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !50, !taffo.info !51
  %x1 = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !53, !taffo.target !54
  %x2 = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !55, !taffo.target !56
  %y_1 = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !51
  %y_2 = alloca [20 x float], align 4, !taffo.initweight !50, !taffo.info !51
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !57, !taffo.info !51
  %x12 = bitcast [20 x float]* %x1 to i8*, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %x23 = bitcast [20 x float]* %x2 to i8*, !taffo.initweight !57, !taffo.info !55, !taffo.target !56
  %y_14 = bitcast [20 x float]* %y_1 to i8*, !taffo.initweight !57, !taffo.info !51
  %y_25 = bitcast [20 x float]* %y_2 to i8*, !taffo.initweight !57, !taffo.info !51
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55, !taffo.target !56
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  call void @init_array.6(i32 noundef 20, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.initweight !58, !taffo.info !51, !taffo.originalCall !59, !taffo.constinfo !60
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !58, !taffo.info !51
  call void @scale_2d.7(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 8), !taffo.initweight !61, !taffo.info !51, !taffo.originalCall !62, !taffo.constinfo !63
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 8), !taffo.initweight !58, !taffo.info !53, !taffo.target !54, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55, !taffo.target !56
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 8), !taffo.initweight !58, !taffo.info !55, !taffo.target !56, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  call void @scale_1d.3(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 8), !taffo.initweight !58, !taffo.info !51, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  call void @scale_1d.5(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 8), !taffo.initweight !58, !taffo.info !51, !taffo.originalCall !64, !taffo.constinfo !65
  call void @timer_start(), !taffo.constinfo !66
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !55, !taffo.target !56
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  %arraydecay19 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !57, !taffo.info !51
  call void @kernel_mvt.4(i32 noundef 20, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, [20 x float]* noundef %arraydecay19), !taffo.initweight !58, !taffo.info !51, !taffo.originalCall !67, !taffo.constinfo !60
  call void @timer_stop(), !taffo.constinfo !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %i.0, !taffo.initweight !57, !taffo.info !53, !taffo.target !54
  %1 = load float, float* %arrayidx, align 4, !taffo.initweight !58, !taffo.info !53, !taffo.target !54
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !6
  store float %1, float* %arrayidx20, align 4, !taffo.initweight !61, !taffo.info !53, !taffo.target !54
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %i.0, !taffo.initweight !57, !taffo.info !55, !taffo.target !56
  %2 = load float, float* %arrayidx21, align 4, !taffo.initweight !58, !taffo.info !55, !taffo.target !56
  %arrayidx22 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !8
  store float %2, float* %arrayidx22, align 4, !taffo.initweight !61, !taffo.info !55, !taffo.target !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !43 !taffo.funinfo !44 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !75 !taffo.funinfo !76 !taffo.equivalentChild !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.initweight !50, !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !58, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !61, !taffo.info !78

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !58, !taffo.info !78
  %conv = sitofp i32 %rem to float, !taffo.initweight !61, !taffo.info !78
  %conv3 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !80, !taffo.info !78
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !58, !taffo.info !81
  store float %div, float* %arrayidx, align 4, !taffo.initweight !61, !taffo.info !81
  %add = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !78, !taffo.constinfo !29
  %rem4 = srem i32 %add, %n, !taffo.initweight !61, !taffo.info !78
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !80, !taffo.info !78
  %conv6 = sitofp i32 %n to float
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !82, !taffo.info !78
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.initweight !58, !taffo.info !81
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !81
  %add9 = add nsw i32 %i.0, 3, !taffo.initweight !58, !taffo.info !78, !taffo.constinfo !29
  %rem10 = srem i32 %add9, %n, !taffo.initweight !61, !taffo.info !78
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !80, !taffo.info !78
  %conv12 = sitofp i32 %n to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !82, !taffo.info !78
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.initweight !58, !taffo.info !81
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !61, !taffo.info !81
  %add15 = add nsw i32 %i.0, 4, !taffo.initweight !58, !taffo.info !78, !taffo.constinfo !29
  %rem16 = srem i32 %add15, %n, !taffo.initweight !61, !taffo.info !78
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !80, !taffo.info !78
  %conv18 = sitofp i32 %n to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !82, !taffo.info !78
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.initweight !58, !taffo.info !81
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !61, !taffo.info !81
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !50, !taffo.info !78
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.initweight !58, !taffo.info !78
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !61, !taffo.info !78

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !58, !taffo.info !78
  %rem25 = srem i32 %mul, %n, !taffo.initweight !61, !taffo.info !78
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !80, !taffo.info !78
  %conv27 = sitofp i32 %n to float
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !82, !taffo.info !78
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !58, !taffo.info !81
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.initweight !58, !taffo.info !81
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !61, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !58, !taffo.info !78, !taffo.constinfo !29
  br label %for.cond21, !llvm.loop !83

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !78, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !84

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !75 !taffo.funinfo !76 !taffo.equivalentChild !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0
  %2 = load float, float* %arrayidx6, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0
  store float %add, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !86

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !87

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ]
  %cmp12 = icmp slt i32 %i.1, %n
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ]
  %cmp15 = icmp slt i32 %j.1, %n
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1
  %3 = load float, float* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1
  %4 = load float, float* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1
  %5 = load float, float* %arrayidx20, align 4
  %mul21 = fmul float %4, %5
  %add22 = fadd float %3, %mul21
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1
  store float %add22, float* %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.constinfo !29
  br label %for.cond14, !llvm.loop !88

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.constinfo !29
  br label %for.cond11, !llvm.loop !89

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !34 !taffo.funinfo !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !95, !taffo.constinfo !29
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !93
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !97
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv), !taffo.constinfo !65
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !70
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !93
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !95, !taffo.constinfo !29
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !93
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !97
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !8
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !8
  %conv14 = fpext float %5 to double, !taffo.info !8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !65
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond3, !llvm.loop !99

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !32 !taffo.funinfo !33 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !53
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !104, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %0, %conv, !taffo.initweight !105, !taffo.info !106
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !53
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !104, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !100 !taffo.funinfo !109 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !55
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !104, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %0, %conv, !taffo.initweight !105, !taffo.info !110
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !55
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !104, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !100 !taffo.funinfo !113 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !51
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !104, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %0, %conv, !taffo.initweight !105, !taffo.info !114
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !51
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !104, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.4(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !82, !taffo.info !53
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !104, !taffo.info !53
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !82, !taffo.info !51
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0, !taffo.initweight !104, !taffo.info !51
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !105, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0, !taffo.initweight !82, !taffo.info !51
  %2 = load float, float* %arrayidx6, align 4, !taffo.initweight !104, !taffo.info !51
  %mul = fmul float %1, %2, !taffo.initweight !105, !taffo.info !119
  %add = fadd float %0, %mul, !taffo.initweight !105, !taffo.info !121
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !82, !taffo.info !53
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !104, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !123

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !124

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !70
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !93
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !70
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !93
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.initweight !82, !taffo.info !55
  %3 = load float, float* %arrayidx17, align 4, !taffo.initweight !104, !taffo.info !55
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.initweight !82, !taffo.info !51
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1, !taffo.initweight !104, !taffo.info !51
  %4 = load float, float* %arrayidx19, align 4, !taffo.initweight !105, !taffo.info !51
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1, !taffo.initweight !82, !taffo.info !51
  %5 = load float, float* %arrayidx20, align 4, !taffo.initweight !104, !taffo.info !51
  %mul21 = fmul float %4, %5, !taffo.initweight !105, !taffo.info !119
  %add22 = fadd float %3, %mul21, !taffo.initweight !105, !taffo.info !125
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.initweight !82, !taffo.info !55
  store float %add22, float* %arrayidx23, align 4, !taffo.initweight !104, !taffo.info !55
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond14, !llvm.loop !127

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond11, !llvm.loop !128

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.5(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !100 !taffo.funinfo !113 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !51
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !104, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %0, %conv, !taffo.initweight !105, !taffo.info !114
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !82, !taffo.info !51
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !104, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.initweight !50, !taffo.info !130
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !58, !taffo.info !131
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !61, !taffo.info !78

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !58, !taffo.info !132
  %conv = sitofp i32 %rem to float, !taffo.initweight !61, !taffo.info !132
  %conv3 = sitofp i32 %n to float, !taffo.info !91
  %div = fdiv float %conv, %conv3, !taffo.initweight !80, !taffo.info !134
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !58, !taffo.info !136
  store float %div, float* %arrayidx, align 4, !taffo.initweight !61, !taffo.info !81
  %add = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !137, !taffo.constinfo !29
  %rem4 = srem i32 %add, %n, !taffo.initweight !61, !taffo.info !132
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !80, !taffo.info !132
  %conv6 = sitofp i32 %n to float, !taffo.info !91
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !82, !taffo.info !134
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.initweight !58, !taffo.info !138
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !81
  %add9 = add nsw i32 %i.0, 3, !taffo.initweight !58, !taffo.info !139, !taffo.constinfo !29
  %rem10 = srem i32 %add9, %n, !taffo.initweight !61, !taffo.info !132
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !80, !taffo.info !132
  %conv12 = sitofp i32 %n to float, !taffo.info !91
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !82, !taffo.info !134
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.initweight !58, !taffo.info !141
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !61, !taffo.info !81
  %add15 = add nsw i32 %i.0, 4, !taffo.initweight !58, !taffo.info !142, !taffo.constinfo !29
  %rem16 = srem i32 %add15, %n, !taffo.initweight !61, !taffo.info !132
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !80, !taffo.info !132
  %conv18 = sitofp i32 %n to float, !taffo.info !91
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !82, !taffo.info !134
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.initweight !58, !taffo.info !141
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !61, !taffo.info !81
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !50, !taffo.info !130
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.initweight !58, !taffo.info !131
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !61, !taffo.info !78

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !58, !taffo.info !144
  %rem25 = srem i32 %mul, %n, !taffo.initweight !61, !taffo.info !132
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !80, !taffo.info !132
  %conv27 = sitofp i32 %n to float, !taffo.info !91
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !82, !taffo.info !134
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !58, !taffo.info !141
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.initweight !58, !taffo.info !141
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !61, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !58, !taffo.info !137, !taffo.constinfo !29
  br label %for.cond21, !llvm.loop !146

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.initweight !58, !taffo.info !137, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !147

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !148 !taffo.funinfo !149 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !104, !taffo.info !51
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !105, !taffo.info !51
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !150, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !102
  %mul = fmul float %1, %conv, !taffo.initweight !151, !taffo.info !114
  %2 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !104, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !105, !taffo.info !51
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !150, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !152

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !153

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
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40740666601BC98A}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0x40742666601BC98A}
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
!52 = !{double 0.000000e+00, double 7.600000e+00}
!53 = !{i1 false, !7, i1 false, i2 -1}
!54 = !{!"x1"}
!55 = !{i1 false, !9, i1 false, i2 -1}
!56 = !{!"x2"}
!57 = !{i32 1}
!58 = !{i32 2}
!59 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i32 3}
!62 = !{void (i32, i32, float*, i32)* @scale_2d}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{void (i32, float*, i32)* @scale_1d}
!65 = !{i1 false, i1 false, i1 false, i1 false}
!66 = !{i1 false}
!67 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 2.100000e+01}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 2.100000e+01}
!74 = distinct !{!74, !31}
!75 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!76 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!77 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array.6}
!78 = !{i1 false, !79, i1 false, i2 1}
!79 = !{double 0.000000e+00, double 2.000000e+01}
!80 = !{i32 4}
!81 = !{i1 false, i1 false, i1 false, i2 1}
!82 = !{i32 5}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt.4}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = !{i32 1, !91, i32 1, !6, i32 1, !8}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 2.000000e+01, double 2.000000e+01}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 1.000000e+00, double 1.000000e+00}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 0.000000e+00, double 0.000000e+00}
!97 = !{i1 false, i1 false, i1 false}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = !{i32 -1, i32 2, i32 -1}
!101 = !{i32 1, !91, i32 1, !53, i32 1, !102}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 8.000000e+00, double 8.000000e+00}
!104 = !{i32 6}
!105 = !{i32 7}
!106 = !{i1 false, !107, i1 false, i2 -1}
!107 = !{double 0.000000e+00, double 0x40A40666601BC98A}
!108 = distinct !{!108, !31}
!109 = !{i32 1, !91, i32 1, !55, i32 1, !102}
!110 = !{i1 false, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x40A42666601BC98A}
!112 = distinct !{!112, !31}
!113 = !{i32 1, !91, i32 1, !51, i32 1, !102}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 6.080000e+01}
!116 = distinct !{!116, !31}
!117 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!118 = !{i32 1, !91, i32 1, !53, i32 1, !55, i32 1, !51, i32 1, !51, i32 1, !51}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 5.776000e+01}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x4077A28F55DE58E6}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x4077C28F55DE58E6}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !31}
!130 = !{i1 false, !69, i1 false, i2 1}
!131 = !{i1 false, !71, i1 false, i2 1}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 1.900000e+01}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double 0.000000e+00, double 0x3FEE666666666666}
!136 = !{i1 false, !7, i1 false, i2 1}
!137 = !{i1 false, !73, i1 false, i2 1}
!138 = !{i1 false, !9, i1 false, i2 1}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 3.000000e+00, double 2.300000e+01}
!141 = !{i1 false, !52, i1 false, i2 1}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 4.000000e+00, double 2.400000e+01}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 0.000000e+00, double 4.000000e+02}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = !{i32 -1, i32 -1, i32 3, i32 -1}
!149 = !{i32 1, !91, i32 1, !91, i32 1, !51, i32 1, !102}
!150 = !{i32 8}
!151 = !{i32 9}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
