; ModuleID = './build/bin/fixed/gesummv/24/gesummv-standard-1-fixed-24.out.ll.2.taffotmp.ll'
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
@.str.3 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,0.9375) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0,4.40625) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [47 x i8] c"target('y') scalar(range(0.0,11.325001) final)\00", section "llvm.metadata", !taffo.info !4
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
  %alpha = alloca float, align 4, !taffo.initweight !34, !taffo.info !35
  %beta = alloca float, align 4, !taffo.initweight !34, !taffo.info !37
  %A = alloca [16 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !39
  %B = alloca [16 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !39
  %tmp = alloca [16 x float], align 4, !taffo.initweight !34, !taffo.info !41
  %x = alloca [16 x float], align 4, !taffo.initweight !34, !taffo.info !39
  %y = alloca [16 x float], align 4, !taffo.initweight !34, !taffo.info !43, !taffo.target !44
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !45, !taffo.info !35
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !45, !taffo.info !37
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.initweight !45, !taffo.info !39
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.initweight !45, !taffo.info !39
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.initweight !45, !taffo.info !41
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.initweight !45, !taffo.info !39
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.initweight !45, !taffo.info !43, !taffo.target !44
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43, !taffo.target !44
  call void @init_array.2(i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.initweight !45, !taffo.info !35, !taffo.originalCall !46, !taffo.constinfo !47
  call void @timer_start(), !taffo.constinfo !48
  %0 = load float, float* %alpha, align 4, !taffo.initweight !45, !taffo.info !35
  %1 = load float, float* %beta, align 4, !taffo.initweight !45, !taffo.info !37
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43, !taffo.target !44
  call void @kernel_gesummv.1(i32 noundef 16, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16), !taffo.initweight !49, !taffo.info !35, !taffo.originalCall !50, !taffo.constinfo !47
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !43, !taffo.target !44
  %2 = load float, float* %arrayidx, align 4, !taffo.initweight !49, !taffo.info !43, !taffo.target !44
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !6
  store float %2, float* %arrayidx17, align 4, !taffo.initweight !55, !taffo.info !43, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !60 !taffo.funinfo !61 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.equivalentChild !64 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !65
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.initweight !34, !taffo.info !70
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !49, !taffo.info !70
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !55, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !49, !taffo.info !70
  %conv = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !70
  %conv3 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !72, !taffo.info !70
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !49, !taffo.info !73
  store float %div, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !49, !taffo.info !73
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !49, !taffo.info !73
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !70
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.initweight !49, !taffo.info !70
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !55, !taffo.info !70

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !70
  %add = add nsw i32 %mul, 1, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !27
  %rem10 = srem i32 %add, %n, !taffo.initweight !72, !taffo.info !70
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !77, !taffo.info !70
  %conv12 = sitofp i32 %n to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !78, !taffo.info !70
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !49, !taffo.info !73
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !73
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !55, !taffo.info !73
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !70
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !27
  %rem18 = srem i32 %add17, %n, !taffo.initweight !72, !taffo.info !70
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !77, !taffo.info !70
  %conv20 = sitofp i32 %n to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !78, !taffo.info !70
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !73
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !73
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !55, !taffo.info !73
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !70, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !79

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !70, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !80

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.equivalentChild !81 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !77, !taffo.info !73, !taffo.constinfo !74
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !77, !taffo.info !73, !taffo.constinfo !74
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
  br label %for.cond2, !llvm.loop !82

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
  br label %for.cond, !llvm.loop !83

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !31 !taffo.funinfo !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !75, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !87
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !91 !taffo.funinfo !92 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !77, !taffo.info !41
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !77, !taffo.info !73, !taffo.constinfo !74
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !77, !taffo.info !43
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.initweight !77, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !87
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !77, !taffo.info !39
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %0 = load float, float* %arrayidx6, align 4, !taffo.initweight !93, !taffo.info !39
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !77, !taffo.info !39
  %1 = load float, float* %arrayidx7, align 4, !taffo.initweight !78, !taffo.info !39
  %mul = fmul float %0, %1, !taffo.initweight !93, !taffo.info !94
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !77, !taffo.info !41
  %2 = load float, float* %arrayidx8, align 4, !taffo.initweight !78, !taffo.info !41
  %add = fadd float %mul, %2, !taffo.initweight !93, !taffo.info !96
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !77, !taffo.info !41
  store float %add, float* %arrayidx9, align 4, !taffo.initweight !78, !taffo.info !41
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !77, !taffo.info !39
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %3 = load float, float* %arrayidx11, align 4, !taffo.initweight !93, !taffo.info !39
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.initweight !77, !taffo.info !39
  %4 = load float, float* %arrayidx12, align 4, !taffo.initweight !78, !taffo.info !39
  %mul13 = fmul float %3, %4, !taffo.initweight !93, !taffo.info !94
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !77, !taffo.info !43
  %5 = load float, float* %arrayidx14, align 4, !taffo.initweight !78, !taffo.info !43
  %add15 = fadd float %mul13, %5, !taffo.initweight !93, !taffo.info !98
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !77, !taffo.info !43
  store float %add15, float* %arrayidx16, align 4, !taffo.initweight !78, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !100

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !77, !taffo.info !41
  %6 = load float, float* %arrayidx17, align 4, !taffo.initweight !78, !taffo.info !41
  %mul18 = fmul float %alpha, %6, !taffo.initweight !77, !taffo.info !101
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !77, !taffo.info !43
  %7 = load float, float* %arrayidx19, align 4, !taffo.initweight !78, !taffo.info !43
  %mul20 = fmul float %beta, %7, !taffo.initweight !77, !taffo.info !103
  %add21 = fadd float %mul18, %mul20, !taffo.initweight !78, !taffo.info !105
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !77, !taffo.info !43
  store float %add21, float* %arrayidx22, align 4, !taffo.initweight !78, !taffo.info !43
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !107

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !108 !taffo.funinfo !109 !taffo.sourceFunction !46 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !72, !taffo.info !35, !taffo.constinfo !65
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !72, !taffo.info !37, !taffo.constinfo !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.initweight !34, !taffo.info !110
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !49, !taffo.info !111
  br i1 %cmp, label %for.body, label %for.end26, !taffo.initweight !55, !taffo.info !70

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !49, !taffo.info !112
  %conv = sitofp i32 %rem to float, !taffo.initweight !55, !taffo.info !112
  %conv3 = sitofp i32 %n to float, !taffo.info !85
  %div = fdiv float %conv, %conv3, !taffo.initweight !72, !taffo.info !114
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !49, !taffo.info !114
  store float %div, float* %arrayidx, align 4, !taffo.initweight !55, !taffo.info !73
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !49, !taffo.info !115
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.initweight !49, !taffo.info !116
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !55, !taffo.info !73, !taffo.constinfo !74
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !110
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.initweight !49, !taffo.info !111
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.initweight !55, !taffo.info !70

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !117
  %add = add nsw i32 %mul, 1, !taffo.initweight !55, !taffo.info !119, !taffo.constinfo !27
  %rem10 = srem i32 %add, %n, !taffo.initweight !72, !taffo.info !112
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !77, !taffo.info !112
  %conv12 = sitofp i32 %n to float, !taffo.info !85
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !78, !taffo.info !114
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.initweight !49, !taffo.info !114
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !114
  store float %div13, float* %arrayidx15, align 4, !taffo.initweight !55, !taffo.info !73
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.initweight !49, !taffo.info !117
  %add17 = add nsw i32 %mul16, 2, !taffo.initweight !55, !taffo.info !121, !taffo.constinfo !27
  %rem18 = srem i32 %add17, %n, !taffo.initweight !72, !taffo.info !112
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !77, !taffo.info !112
  %conv20 = sitofp i32 %n to float, !taffo.info !85
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !78, !taffo.info !114
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !49, !taffo.info !114
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.initweight !49, !taffo.info !114
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !55, !taffo.info !73
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !49, !taffo.info !123, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !124

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.initweight !49, !taffo.info !123, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !125

for.end26:                                        ; preds = %for.cond
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
!7 = !{double 0.000000e+00, double 0x4026A66687F455A8}
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
!36 = !{double 1.500000e+00, double 1.500000e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 1.200000e+00, double 1.200000e+00}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 9.375000e-01}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 4.406250e+00}
!43 = !{i1 false, !7, i1 false, i2 -1}
!44 = !{!"y"}
!45 = !{i32 1}
!46 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i32 2}
!50 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.700000e+01}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.000000e+00}
!55 = !{i32 3}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.700000e+01}
!58 = distinct !{!58, !29}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!61 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!62 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!63 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!64 = !{void (i32, float*, float*, [16 x float]*, [16 x float]*, float*, float*, float*)* @init_array.2}
!65 = !{!66, i1 false}
!66 = !{i1 false, !36, i1 false, i2 0}
!67 = !{!68, i1 false}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!70 = !{i1 false, !71, i1 false, i2 1}
!71 = !{double 0.000000e+00, double 1.600000e+01}
!72 = !{i32 4}
!73 = !{i1 false, i1 false, i1 false, i2 1}
!74 = !{!75, i1 false}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = !{i32 5}
!78 = !{i32 6}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = !{void (i32, float, float, [16 x float]*, [16 x float]*, float*, float*, float*)* @kernel_gesummv.1}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = !{i32 1, !85, i32 1, !6}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.600000e+01, double 1.600000e+01}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 1.000000e+00}
!89 = !{i1 false, i1 false, i1 false, i1 false}
!90 = distinct !{!90, !29}
!91 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!92 = !{i32 1, !85, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !39, i32 1, !41, i32 1, !39, i32 1, !43}
!93 = !{i32 7}
!94 = !{i1 false, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 0x3FEC200000000000}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 0x4015240000000000}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 0x4028686687F455A8}
!100 = distinct !{!100, !29}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 0x401A700000000000}
!103 = !{i1 false, !104, i1 false, i2 -1}
!104 = !{double 0.000000e+00, double 0x402B2E14A3253396}
!105 = !{i1 false, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 0x4034330A519299CB}
!107 = distinct !{!107, !29}
!108 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!109 = !{i32 1, !85, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !39, i32 1, !39, i32 1, !41, i32 1, !43}
!110 = !{i1 false, !52, i1 false, i2 1}
!111 = !{i1 false, !54, i1 false, i2 1}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.500000e+01}
!114 = !{i1 false, !40, i1 false, i2 1}
!115 = !{i1 false, !7, i1 false, i2 1}
!116 = !{i1 false, !42, i1 false, i2 1}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 2.560000e+02}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 1.000000e+00, double 2.570000e+02}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 2.000000e+00, double 2.580000e+02}
!123 = !{i1 false, !57, i1 false, i2 1}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
