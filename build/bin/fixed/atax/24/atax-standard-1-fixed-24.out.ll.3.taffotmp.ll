; ModuleID = './build/bin/fixed/atax/24/atax-standard-1-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.21) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/atax.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(1.0,1.954545) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [44 x i8] c"target('y') scalar(range(0.0,7.6915) final)\00", section "llvm.metadata", !taffo.info !4
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,3.815) final)\00", section "llvm.metadata", !taffo.info !0
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
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %A = alloca [20 x [22 x float]], align 4, !taffo.initweight !34, !taffo.info !35
  %x = alloca [22 x float], align 4, !taffo.initweight !34, !taffo.info !37
  %y = alloca [22 x float], align 4, !taffo.initweight !34, !taffo.info !39, !taffo.target !40
  %tmp = alloca [20 x float], align 4, !taffo.initweight !34, !taffo.info !41
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.initweight !43, !taffo.info !35
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.initweight !43, !taffo.info !37
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.initweight !43, !taffo.info !41
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !35
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @init_array.2(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !44, !taffo.info !35, !taffo.originalCall !45, !taffo.constinfo !46
  call void @timer_start(), !taffo.constinfo !47
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !35
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41
  call void @kernel_atax.1(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !44, !taffo.info !35, !taffo.originalCall !48, !taffo.constinfo !46
  call void @timer_stop(), !taffo.constinfo !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %i.0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !44, !taffo.info !39, !taffo.target !40
  %arrayidx12 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx12, align 4, !taffo.initweight !53, !taffo.info !39, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !57
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !58 !taffo.funinfo !59 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.equivalentChild !62 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !44, !taffo.info !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !44, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !53, !taffo.info !64

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !44, !taffo.info !64
  %div = fdiv float %conv5, %conv, !taffo.initweight !44, !taffo.info !63
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !53, !taffo.info !63, !taffo.constinfo !66
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !44, !taffo.info !63
  store float %add, float* %arrayidx, align 4, !taffo.initweight !53, !taffo.info !63
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !44, !taffo.info !63
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !53, !taffo.info !63, !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !64, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.initweight !34, !taffo.info !64
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.initweight !44, !taffo.info !64
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !53, !taffo.info !64

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !44, !taffo.info !63
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !53, !taffo.info !63, !taffo.constinfo !69
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.initweight !34, !taffo.info !64
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.initweight !44, !taffo.info !64
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !53, !taffo.info !64

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.initweight !44, !taffo.info !64
  %rem = srem i32 %add16, %n, !taffo.initweight !53, !taffo.info !64
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !73, !taffo.info !64
  %mul = mul nsw i32 5, %m, !taffo.constinfo !27
  %conv18 = sitofp i32 %mul to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !74, !taffo.info !64
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !44, !taffo.info !63
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.initweight !44, !taffo.info !63
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !53, !taffo.info !63
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.initweight !44, !taffo.info !64, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !75

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.initweight !44, !taffo.info !64, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !76

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.equivalentChild !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !74, !taffo.info !63, !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ]
  %cmp2 = icmp slt i32 %i.1, %m
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !74, !taffo.info !63, !taffo.constinfo !69
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
  br label %for.cond5, !llvm.loop !79

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
  br label %for.cond16, !llvm.loop !80

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !81

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !31 !taffo.funinfo !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !70, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !67
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !57
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !85
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.1(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !48 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !74, !taffo.info !39
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !74, !taffo.info !63, !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !51
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !67
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !74, !taffo.info !41
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !74, !taffo.info !63, !taffo.constinfo !69
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !51
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !67
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !74, !taffo.info !41
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !92, !taffo.info !41
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !92, !taffo.info !35
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !93, !taffo.info !35
  %arrayidx11 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !74, !taffo.info !37
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !92, !taffo.info !37
  %mul = fmul float %1, %2, !taffo.initweight !93, !taffo.info !94
  %add = fadd float %0, %mul, !taffo.initweight !93, !taffo.info !96
  %arrayidx12 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !74, !taffo.info !41
  store float %add, float* %arrayidx12, align 4, !taffo.initweight !92, !taffo.info !41
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !98

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !51
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !67
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !74, !taffo.info !39
  %3 = load float, float* %arrayidx19, align 4, !taffo.initweight !92, !taffo.info !39
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.1, !taffo.initweight !92, !taffo.info !35
  %4 = load float, float* %arrayidx21, align 4, !taffo.initweight !93, !taffo.info !35
  %arrayidx22 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !74, !taffo.info !41
  %5 = load float, float* %arrayidx22, align 4, !taffo.initweight !92, !taffo.info !41
  %mul23 = fmul float %4, %5, !taffo.initweight !93, !taffo.info !99
  %add24 = fadd float %3, %mul23, !taffo.initweight !93, !taffo.info !101
  %arrayidx25 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !74, !taffo.info !39
  store float %add24, float* %arrayidx25, align 4, !taffo.initweight !92, !taffo.info !39
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !103

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !104

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !45 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !44, !taffo.info !105
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !44, !taffo.info !106
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !53, !taffo.info !64

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !44, !taffo.info !64
  %div = fdiv float %conv5, %conv, !taffo.initweight !44, !taffo.info !107
  %add = fadd float 1.000000e+00, %div, !taffo.initweight !53, !taffo.info !108, !taffo.constinfo !66
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !44, !taffo.info !110
  store float %add, float* %arrayidx, align 4, !taffo.initweight !53, !taffo.info !63
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !44, !taffo.info !111
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.initweight !53, !taffo.info !63, !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !112, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.initweight !34, !taffo.info !64
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.initweight !44, !taffo.info !106
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.initweight !53, !taffo.info !64

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.initweight !44, !taffo.info !114
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.initweight !53, !taffo.info !63, !taffo.constinfo !69
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.initweight !34, !taffo.info !64
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.initweight !44, !taffo.info !106
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.initweight !53, !taffo.info !64

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.initweight !44, !taffo.info !115
  %rem = srem i32 %add16, %n, !taffo.initweight !53, !taffo.info !117
  %conv17 = sitofp i32 %rem to float, !taffo.initweight !73, !taffo.info !117
  %mul = mul nsw i32 5, %m, !taffo.info !119, !taffo.constinfo !27
  %conv18 = sitofp i32 %mul to float, !taffo.info !119
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !74, !taffo.info !35
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.initweight !44, !taffo.info !121
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.initweight !44, !taffo.info !121
  store float %div19, float* %arrayidx21, align 4, !taffo.initweight !53, !taffo.info !63
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.initweight !44, !taffo.info !112, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !122

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.initweight !44, !taffo.info !112, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !123

for.end27:                                        ; preds = %for.cond7
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
!7 = !{double 0.000000e+00, double 7.691500e+00}
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
!30 = !{}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{i32 0}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 2.100000e-01}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 1.000000e+00, double 0x3FFF45D0FA58F712}
!39 = !{i1 false, !7, i1 false, i2 -1}
!40 = !{!"y"}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 3.815000e+00}
!43 = !{i32 1}
!44 = !{i32 2}
!45 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = !{i1 false}
!48 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 2.300000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+00}
!53 = !{i32 3}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 2.300000e+01}
!56 = distinct !{!56, !29}
!57 = !{i1 false, i1 false, i1 false}
!58 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!61 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!62 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @init_array.2}
!63 = !{i1 false, i1 false, i1 false, i2 1}
!64 = !{i1 false, !65, i1 false, i2 -1}
!65 = !{double 0.000000e+00, double 2.200000e+01}
!66 = !{!67, i1 false}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 1.000000e+00}
!69 = !{!70, i1 false}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 0.000000e+00}
!72 = distinct !{!72, !29}
!73 = !{i32 4}
!74 = !{i32 5}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = !{void (i32, i32, [22 x float]*, float*, float*, float*)* @kernel_atax.1}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = !{i32 1, !83, i32 1, !6}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 2.200000e+01, double 2.200000e+01}
!85 = !{i1 false, i1 false, i1 false, i1 false}
!86 = distinct !{!86, !29}
!87 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!88 = !{i32 1, !89, i32 1, !83, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 2.000000e+01, double 2.000000e+01}
!91 = distinct !{!91, !29}
!92 = !{i32 6}
!93 = !{i32 7}
!94 = !{i1 false, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 0x3FDA44E2BDCFD9C7}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 0x4010E6DD8805F35F}
!98 = distinct !{!98, !29}
!99 = !{i1 false, !100, i1 false, i2 -1}
!100 = !{double 0.000000e+00, double 0x3FE9A305532617C1}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 8.492650e+00}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = !{i1 false, !84, i1 false, i2 1}
!106 = !{i1 false, !52, i1 false, i2 -1}
!107 = !{i1 false, !52, i1 false, i2 1}
!108 = !{i1 false, !109, i1 false, i2 1}
!109 = !{double 1.000000e+00, double 2.000000e+00}
!110 = !{i1 false, !38, i1 false, i2 1}
!111 = !{i1 false, !7, i1 false, i2 1}
!112 = !{i1 false, !55, i1 false, i2 -1}
!113 = distinct !{!113, !29}
!114 = !{i1 false, !42, i1 false, i2 1}
!115 = !{i1 false, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 4.400000e+01}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 0.000000e+00, double 2.100000e+01}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 1.000000e+02, double 1.000000e+02}
!121 = !{i1 false, !36, i1 false, i2 1}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
