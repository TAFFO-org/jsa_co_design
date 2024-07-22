; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-4-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [35 x i8] c"scalar(range(0.1,32.689999) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [35 x i8] c"scalar(range(4.0,32.689999) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [31 x i8] c"scalar(range(16.1,18.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [52 x i8] c"target('x') scalar(range(-0.037947,3.998521) final)\00", section "llvm.metadata", !taffo.info !4
@.str.5 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,16.1) final)\00", section "llvm.metadata", !taffo.info !0
@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !48, !taffo.info !49
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !48, !taffo.info !51
  %b = alloca [20 x float], align 4, !taffo.initweight !48, !taffo.info !53
  %x = alloca [20 x float], align 4, !taffo.initweight !48, !taffo.info !55, !taffo.target !56
  %y = alloca [20 x float], align 4, !taffo.initweight !48, !taffo.info !57
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !59, !taffo.info !49
  %B2 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !59, !taffo.info !51
  %b3 = bitcast [20 x float]* %b to i8*, !taffo.initweight !59, !taffo.info !53
  %x4 = bitcast [20 x float]* %x to i8*, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %y5 = bitcast [20 x float]* %y to i8*, !taffo.initweight !59, !taffo.info !57
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !49
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @init_array.5(i32 noundef 20, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !60, !taffo.info !49, !taffo.originalCall !61, !taffo.constinfo !62
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !49
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.initweight !60, !taffo.info !49
  call void @scale_2d.6(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 4), !taffo.initweight !63, !taffo.info !49, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay11 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.initweight !59, !taffo.info !51
  %1 = bitcast [20 x float]* %arraydecay11 to float*, !taffo.initweight !60, !taffo.info !51
  call void @scale_2d.7(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 4), !taffo.initweight !63, !taffo.info !51, !taffo.originalCall !64, !taffo.constinfo !65
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 4), !taffo.initweight !60, !taffo.info !53, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 4), !taffo.initweight !60, !taffo.info !55, !taffo.target !56, !taffo.originalCall !66, !taffo.constinfo !67
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 4), !taffo.initweight !60, !taffo.info !57, !taffo.originalCall !66, !taffo.constinfo !67
  call void @timer_start(), !taffo.constinfo !68
  %arraydecay15 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !49
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !59, !taffo.info !53
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @kernel_ludcmp.3(i32 noundef 20, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18), !taffo.initweight !60, !taffo.info !49, !taffo.originalCall !69, !taffo.constinfo !70
  call void @timer_stop(), !taffo.constinfo !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !55, !taffo.target !56
  %2 = load float, float* %arrayidx, align 4, !taffo.initweight !60, !taffo.info !55, !taffo.target !56
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !6
  store float %2, float* %arrayidx19, align 4, !taffo.initweight !63, !taffo.info !55, !taffo.target !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !78
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !79 !taffo.funinfo !80 !taffo.equivalentChild !81 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !60, !taffo.info !82
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !83
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !63, !taffo.info !83

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !60, !taffo.info !82
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !60, !taffo.info !82
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  %add = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !63, !taffo.info !83
  %div = fdiv float %conv6, %conv, !taffo.initweight !60, !taffo.info !82
  %conv7 = fpext float %div to double, !taffo.initweight !63, !taffo.info !82
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !88, !taffo.info !82, !taffo.constinfo !89
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !90, !taffo.info !82, !taffo.constinfo !91
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !94, !taffo.info !82
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.initweight !60, !taffo.info !82
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !63, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.initweight !48, !taffo.info !83
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !63, !taffo.info !83

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.initweight !48, !taffo.info !83
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !63, !taffo.info !83

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !63, !taffo.info !83
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !88, !taffo.info !83
  %conv21 = sitofp i32 %n to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !90, !taffo.info !83
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !90, !taffo.info !82, !taffo.constinfo !96
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !82
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !82
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !63, !taffo.info !82
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !99

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.initweight !48, !taffo.info !83
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !63, !taffo.info !83

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !82
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.initweight !60, !taffo.info !82
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !100

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !82
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.initweight !60, !taffo.info !82
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !101
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !102

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ]
  %cmp45 = icmp slt i32 %r.0, %n
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ]
  %cmp49 = icmp slt i32 %s.0, %n
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !90, !taffo.info !82, !taffo.constinfo !85
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !103

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !104

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ]
  %cmp61 = icmp slt i32 %t.0, %n
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ]
  %cmp65 = icmp slt i32 %r.1, %n
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ]
  %cmp69 = icmp slt i32 %s.1, %n
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0
  %0 = load float, float* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0
  %1 = load float, float* %arrayidx75, align 4
  %mul = fmul float %0, %1
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1
  %2 = load float, float* %arrayidx77, align 4
  %add78 = fadd float %2, %mul
  store float %add78, float* %arrayidx77, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !105

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.constinfo !27
  br label %for.cond64, !llvm.loop !106

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !107

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ]
  %cmp89 = icmp slt i32 %r.2, %n
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ]
  %cmp93 = icmp slt i32 %s.2, %n
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2
  %3 = load float, float* %arrayidx97, align 4
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2
  store float %3, float* %arrayidx99, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.constinfo !27
  br label %for.cond92, !llvm.loop !108

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.constinfo !27
  br label %for.cond88, !llvm.loop !109

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !41 !taffo.funinfo !42 !taffo.equivalentChild !110 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ]
  %cmp3 = icmp slt i32 %j.0, %i.0
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx5, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.initweight !48, !taffo.info !111
  %cmp7 = icmp slt i32 %k.0, %j.0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx12, align 4
  %mul = fmul float %1, %2
  %sub = fsub float %w.0, %mul, !taffo.initweight !60, !taffo.info !111
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !113

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx14, align 4
  %div = fdiv float %w.0, %3, !taffo.initweight !60, !taffo.info !111
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !63, !taffo.info !111
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !114

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ]
  %cmp21 = icmp slt i32 %j.1, %n
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1
  %4 = load float, float* %arrayidx24, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ]
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.initweight !48, !taffo.info !111
  %cmp26 = icmp slt i32 %k.1, %i.0
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1
  %5 = load float, float* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1
  %6 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %5, %6
  %sub33 = fsub float %w.1, %mul32, !taffo.initweight !60, !taffo.info !111
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond25, !llvm.loop !115

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1
  store float %w.1, float* %arrayidx38, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !116

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !117

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ]
  %cmp46 = icmp slt i32 %i.1, %n
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1
  %7 = load float, float* %arrayidx48, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ]
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.initweight !48, !taffo.info !111
  %cmp50 = icmp slt i32 %j.2, %i.1
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2
  %8 = load float, float* %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2
  %9 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %8, %9
  %sub56 = fsub float %w.2, %mul55, !taffo.initweight !60, !taffo.info !111
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.constinfo !27
  br label %for.cond49, !llvm.loop !118

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1
  store float %w.2, float* %arrayidx60, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond45, !llvm.loop !119

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.constinfo !27
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ]
  %cmp66 = icmp sge i32 %i.2, 0
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2
  %10 = load float, float* %arrayidx68, align 4, !taffo.initweight !60, !taffo.info !111
  %add = add nsw i32 %i.2, 1, !taffo.constinfo !27
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ]
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.initweight !48, !taffo.info !111
  %cmp70 = icmp slt i32 %j.3, %n
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3
  %11 = load float, float* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3
  %12 = load float, float* %arrayidx74, align 4
  %mul75 = fmul float %11, %12
  %sub76 = fsub float %w.3, %mul75, !taffo.initweight !60, !taffo.info !111
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !120

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2
  %13 = load float, float* %arrayidx81, align 4
  %div82 = fdiv float %w.3, %13, !taffo.initweight !60, !taffo.info !111
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !63, !taffo.info !111
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.constinfo !27
  br label %for.cond65, !llvm.loop !121

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !30 !taffo.funinfo !122 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !86, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !97
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !126 !taffo.funinfo !127 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !53
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !94, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %0, %conv, !taffo.initweight !128, !taffo.info !129
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !53
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !94, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !126 !taffo.funinfo !132 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !55
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !94, !taffo.info !55
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %0, %conv, !taffo.initweight !128, !taffo.info !133
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !55
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !94, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.3(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !136 !taffo.funinfo !137 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !73
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !86
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !94, !taffo.info !49
  %0 = load float, float* %arrayidx5, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !73
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.initweight !48, !taffo.info !111
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !86
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0, !taffo.initweight !94, !taffo.info !49
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !128, !taffo.info !49
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !94, !taffo.info !49
  %2 = load float, float* %arrayidx12, align 4, !taffo.initweight !128, !taffo.info !49
  %mul = fmul float %1, %2, !taffo.initweight !138, !taffo.info !139
  %sub = fsub float %w.0, %mul, !taffo.initweight !60, !taffo.info !141
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !143

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !94, !taffo.info !49
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !128, !taffo.info !49
  %div = fdiv float %w.0, %3, !taffo.initweight !60, !taffo.info !144
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.initweight !94, !taffo.info !49
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !63, !taffo.info !111
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !146

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !73
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !97
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.initweight !94, !taffo.info !49
  %4 = load float, float* %arrayidx24, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !73
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.initweight !48, !taffo.info !111
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !86
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.initweight !94, !taffo.info !49
  %5 = load float, float* %arrayidx29, align 4, !taffo.initweight !128, !taffo.info !49
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.initweight !94, !taffo.info !49
  %6 = load float, float* %arrayidx31, align 4, !taffo.initweight !128, !taffo.info !49
  %mul32 = fmul float %5, %6, !taffo.initweight !138, !taffo.info !139
  %sub33 = fsub float %w.1, %mul32, !taffo.initweight !60, !taffo.info !141
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond25, !llvm.loop !147

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !90, !taffo.info !49
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.initweight !94, !taffo.info !49
  store float %w.1, float* %arrayidx38, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !148

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !149

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !73
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !97
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1, !taffo.initweight !90, !taffo.info !53
  %7 = load float, float* %arrayidx48, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !73
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.initweight !48, !taffo.info !111
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !86
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2, !taffo.initweight !94, !taffo.info !49
  %8 = load float, float* %arrayidx53, align 4, !taffo.initweight !128, !taffo.info !49
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2, !taffo.initweight !90, !taffo.info !57
  %9 = load float, float* %arrayidx54, align 4, !taffo.initweight !94, !taffo.info !57
  %mul55 = fmul float %8, %9, !taffo.initweight !128, !taffo.info !150
  %sub56 = fsub float %w.2, %mul55, !taffo.initweight !60, !taffo.info !152
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond49, !llvm.loop !154

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1, !taffo.initweight !90, !taffo.info !57
  store float %w.2, float* %arrayidx60, align 4, !taffo.initweight !60, !taffo.info !111
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond45, !llvm.loop !155

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !156, !taffo.constinfo !27
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !158
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !97
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2, !taffo.initweight !90, !taffo.info !57
  %10 = load float, float* %arrayidx68, align 4, !taffo.initweight !60, !taffo.info !111
  %add = add nsw i32 %i.2, 1, !taffo.info !123, !taffo.constinfo !27
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !160
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.initweight !48, !taffo.info !111
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !86
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.initweight !90, !taffo.info !49
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3, !taffo.initweight !94, !taffo.info !49
  %11 = load float, float* %arrayidx73, align 4, !taffo.initweight !128, !taffo.info !49
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3, !taffo.initweight !90, !taffo.info !55
  %12 = load float, float* %arrayidx74, align 4, !taffo.initweight !94, !taffo.info !55
  %mul75 = fmul float %11, %12, !taffo.initweight !128, !taffo.info !162
  %sub76 = fsub float %w.3, %mul75, !taffo.initweight !60, !taffo.info !164
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !166, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !168

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.initweight !90, !taffo.info !49
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2, !taffo.initweight !94, !taffo.info !49
  %13 = load float, float* %arrayidx81, align 4, !taffo.initweight !128, !taffo.info !49
  %div82 = fdiv float %w.3, %13, !taffo.initweight !60, !taffo.info !144
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !90, !taffo.info !55
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !63, !taffo.info !111
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !169, !taffo.constinfo !27
  br label %for.cond65, !llvm.loop !171

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !126 !taffo.funinfo !172 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !57
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !94, !taffo.info !57
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %0, %conv, !taffo.initweight !128, !taffo.info !173
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !90, !taffo.info !57
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !94, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !175

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !176 !taffo.funinfo !177 !taffo.sourceFunction !61 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !60, !taffo.info !178
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !179
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !60, !taffo.info !180
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !63, !taffo.info !83

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !60, !taffo.info !181
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !60, !taffo.info !182
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  %add = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !183, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !63, !taffo.info !183
  %div = fdiv float %conv6, %conv, !taffo.initweight !60, !taffo.info !184
  %conv7 = fpext float %div to double, !taffo.initweight !63, !taffo.info !184
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !88, !taffo.info !186, !taffo.constinfo !89
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !90, !taffo.info !188, !taffo.constinfo !91
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !94, !taffo.info !190
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.initweight !60, !taffo.info !192
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !63, !taffo.info !82
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !183, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.initweight !48, !taffo.info !179
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.initweight !60, !taffo.info !180
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !63, !taffo.info !83

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.initweight !48, !taffo.info !179
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.initweight !60, !taffo.info !180
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !63, !taffo.info !83

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !60, !taffo.info !194, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !63, !taffo.info !196
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !88, !taffo.info !196
  %conv21 = sitofp i32 %n to float, !taffo.info !123
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !90, !taffo.info !198
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !90, !taffo.info !200, !taffo.constinfo !96
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !202
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !202
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !63, !taffo.info !82
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !183, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !203

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !183, !taffo.constinfo !27
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.initweight !48, !taffo.info !204
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.initweight !60, !taffo.info !180
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !63, !taffo.info !83

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !202
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.initweight !60, !taffo.info !202
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !85
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.initweight !60, !taffo.info !206, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !208

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !60, !taffo.info !202
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.initweight !60, !taffo.info !202
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !63, !taffo.info !82, !taffo.constinfo !101
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.initweight !60, !taffo.info !183, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !209

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !73
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !97
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !73
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !97
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0, !taffo.initweight !90, !taffo.info !51
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0, !taffo.initweight !94, !taffo.info !51
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !90, !taffo.info !82, !taffo.constinfo !85
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !210

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !211

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !73
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !97
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !73
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !97
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !73
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !97
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0, !taffo.initweight !94, !taffo.info !49
  %0 = load float, float* %arrayidx73, align 4, !taffo.initweight !128, !taffo.info !49
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.initweight !90, !taffo.info !49
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0, !taffo.initweight !94, !taffo.info !49
  %1 = load float, float* %arrayidx75, align 4, !taffo.initweight !128, !taffo.info !49
  %mul = fmul float %0, %1, !taffo.initweight !138, !taffo.info !139
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1, !taffo.initweight !90, !taffo.info !51
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1, !taffo.initweight !94, !taffo.info !51
  %2 = load float, float* %arrayidx77, align 4, !taffo.initweight !128, !taffo.info !51
  %add78 = fadd float %2, %mul, !taffo.initweight !138, !taffo.info !212
  store float %add78, float* %arrayidx77, align 4, !taffo.initweight !128, !taffo.info !51
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !214

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond64, !llvm.loop !215

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !216

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !73
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !97
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !73
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !97
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2, !taffo.initweight !90, !taffo.info !51
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2, !taffo.initweight !94, !taffo.info !51
  %3 = load float, float* %arrayidx97, align 4, !taffo.initweight !128, !taffo.info !51
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.initweight !90, !taffo.info !49
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2, !taffo.initweight !94, !taffo.info !49
  store float %3, float* %arrayidx99, align 4, !taffo.initweight !128, !taffo.info !49
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond92, !llvm.loop !217

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond88, !llvm.loop !218

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !219 !taffo.funinfo !220 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !94, !taffo.info !49
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !128, !taffo.info !49
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !138, !taffo.info !49
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %1, %conv, !taffo.initweight !221, !taffo.info !222
  %2 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !94, !taffo.info !49
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !128, !taffo.info !49
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !138, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !224

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !225

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !219 !taffo.funinfo !226 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !94, !taffo.info !51
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !128, !taffo.info !51
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !138, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !92
  %mul = fmul float %1, %conv, !taffo.initweight !221, !taffo.info !227
  %2 = mul nsw i32 %i.0, %m, !taffo.info !86
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !94, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !128, !taffo.info !51
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !138, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !229

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !230

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
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
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
!38 = !{void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
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
!50 = !{double 1.000000e-01, double 0x40405851E321A2E8}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 4.000000e+00, double 0x40405851E321A2E8}
!53 = !{i1 false, !54, i1 false, i2 -1}
!54 = !{double 1.610000e+01, double 1.800000e+01}
!55 = !{i1 false, !7, i1 false, i2 -1}
!56 = !{!"x"}
!57 = !{i1 false, !58, i1 false, i2 -1}
!58 = !{double 0.000000e+00, double 1.610000e+01}
!59 = !{i32 1}
!60 = !{i32 2}
!61 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = !{i32 3}
!64 = !{void (i32, i32, float*, i32)* @scale_2d}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{void (i32, float*, i32)* @scale_1d}
!67 = !{i1 false, i1 false, i1 false, i1 false}
!68 = !{i1 false}
!69 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp}
!70 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 2.100000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 2.100000e+01}
!77 = distinct !{!77, !29}
!78 = !{i1 false, i1 false, i1 false}
!79 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!80 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!81 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array.5}
!82 = !{i1 false, i1 false, i1 false, i2 1}
!83 = !{i1 false, !84, i1 false, i2 1}
!84 = !{double 0.000000e+00, double 2.000000e+01}
!85 = !{!86, i1 false}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 0.000000e+00, double 0.000000e+00}
!88 = !{i32 4}
!89 = !{i1 false, !25}
!90 = !{i32 5}
!91 = !{i1 false, !92}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 4.000000e+00, double 4.000000e+00}
!94 = !{i32 6}
!95 = distinct !{!95, !29}
!96 = !{i1 false, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.000000e+00, double 1.000000e+00}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{!97, i1 false}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp.3}
!111 = !{i1 false, !112, i1 false, i2 -1}
!112 = !{double -2.000000e+02, double 2.000000e+02}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29}
!122 = !{i32 1, !123, i32 1, !6}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 2.000000e+01, double 2.000000e+01}
!125 = distinct !{!125, !29}
!126 = !{i32 -1, i32 2, i32 -1}
!127 = !{i32 1, !123, i32 1, !53, i32 1, !92}
!128 = !{i32 7}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double 6.440000e+01, double 7.200000e+01}
!131 = distinct !{!131, !29}
!132 = !{i32 1, !123, i32 1, !55, i32 1, !92}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double -1.517880e-01, double 0x402FFCF893FAF428}
!135 = distinct !{!135, !29}
!136 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!137 = !{i32 1, !123, i32 1, !49, i32 1, !53, i32 1, !55, i32 1, !57}
!138 = !{i32 8}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double 0x3F847AE147AE147C, double 0x4090B28B4CA8D01D}
!141 = !{i1 false, !142, i1 false, i2 -1}
!142 = !{double 0xC093D28B4CA8D01D, double 1.999900e+02}
!143 = distinct !{!143, !29}
!144 = !{i1 false, !145, i1 false, i2 -1}
!145 = !{double -2.000000e+03, double 2.000000e+03}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = distinct !{!148, !29}
!149 = distinct !{!149, !29}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double 0.000000e+00, double 0x40807278CC8D0BED}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 0xC086B278CC8D0BED, double 2.000000e+02}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !29}
!156 = !{i1 false, !157, i1 false, i2 0}
!157 = !{double 1.900000e+01, double 1.900000e+01}
!158 = !{i1 false, !159, i1 false, i2 0}
!159 = !{double 1.800000e+01, double 1.900000e+01}
!160 = !{i1 false, !161, i1 false, i2 0}
!161 = !{double 2.000000e+01, double 2.100000e+01}
!162 = !{i1 false, !163, i1 false, i2 -1}
!163 = !{double 0xBFF3D9094EBF7CC9, double 0x406056C5D0F5C5D9}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 0xC074AB62E87AE2EC, double 0x406927B2129D7EFA}
!166 = !{i1 false, !167, i1 false, i2 0}
!167 = !{double 2.100000e+01, double 2.100000e+01}
!168 = distinct !{!168, !29}
!169 = !{i1 false, !170, i1 false, i2 0}
!170 = !{double 1.800000e+01, double 1.800000e+01}
!171 = distinct !{!171, !29}
!172 = !{i32 1, !123, i32 1, !57, i32 1, !92}
!173 = !{i1 false, !174, i1 false, i2 -1}
!174 = !{double 0.000000e+00, double 6.440000e+01}
!175 = distinct !{!175, !29}
!176 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!177 = !{i32 1, !123, i32 1, !49, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57}
!178 = !{i1 false, !124, i1 false, i2 1}
!179 = !{i1 false, !72, i1 false, i2 1}
!180 = !{i1 false, !74, i1 false, i2 1}
!181 = !{i1 false, !7, i1 false, i2 1}
!182 = !{i1 false, !58, i1 false, i2 1}
!183 = !{i1 false, !76, i1 false, i2 1}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double 5.000000e-02, double 1.050000e+00}
!186 = !{i1 false, !187, i1 false, i2 1}
!187 = !{double 2.500000e-02, double 5.250000e-01}
!188 = !{i1 false, !189, i1 false, i2 1}
!189 = !{double 4.025000e+00, double 4.525000e+00}
!190 = !{i1 false, !191, i1 false, i2 1}
!191 = !{double 0x4010199980000000, double 0x40121999A0000000}
!192 = !{i1 false, !54, i1 false, i2 1}
!193 = distinct !{!193, !29}
!194 = !{i1 false, !195, i1 false, i2 1}
!195 = !{double -2.000000e+01, double 0.000000e+00}
!196 = !{i1 false, !197, i1 false, i2 1}
!197 = !{double -1.900000e+01, double 0.000000e+00}
!198 = !{i1 false, !199, i1 false, i2 1}
!199 = !{double 0xBFEE666666666666, double 0.000000e+00}
!200 = !{i1 false, !201, i1 false, i2 1}
!201 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!202 = !{i1 false, !50, i1 false, i2 1}
!203 = distinct !{!203, !29}
!204 = !{i1 false, !205, i1 false, i2 1}
!205 = !{double 0.000000e+00, double 2.200000e+01}
!206 = !{i1 false, !207, i1 false, i2 1}
!207 = !{double 1.000000e+00, double 2.200000e+01}
!208 = distinct !{!208, !29}
!209 = distinct !{!209, !29}
!210 = distinct !{!210, !29}
!211 = distinct !{!211, !29}
!212 = !{i1 false, !213, i1 false, i2 -1}
!213 = !{double 4.010000e+00, double 0x4091354DDBC1DD34}
!214 = distinct !{!214, !29}
!215 = distinct !{!215, !29}
!216 = distinct !{!216, !29}
!217 = distinct !{!217, !29}
!218 = distinct !{!218, !29}
!219 = !{i32 -1, i32 -1, i32 3, i32 -1}
!220 = !{i32 1, !123, i32 1, !123, i32 1, !49, i32 1, !92}
!221 = !{i32 9}
!222 = !{i1 false, !223, i1 false, i2 -1}
!223 = !{double 4.000000e-01, double 0x40605851E321A2E8}
!224 = distinct !{!224, !29}
!225 = distinct !{!225, !29}
!226 = !{i32 1, !123, i32 1, !123, i32 1, !51, i32 1, !92}
!227 = !{i1 false, !228, i1 false, i2 -1}
!228 = !{double 1.600000e+01, double 0x40605851E321A2E8}
!229 = distinct !{!229, !29}
!230 = distinct !{!230, !29}
