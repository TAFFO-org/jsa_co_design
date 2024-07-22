; ModuleID = './build/bin/fixed/gesummv/11/gesummv-standard-1-fixed-11.out.ll.3.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [16 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %alpha = alloca float, align 4, !taffo.info !28, !taffo.initweight !31
  %beta = alloca float, align 4, !taffo.info !32, !taffo.initweight !31
  %A = alloca [16 x [16 x float]], align 4, !taffo.info !34, !taffo.initweight !31
  %B = alloca [16 x [16 x float]], align 4, !taffo.info !34, !taffo.initweight !31
  %tmp = alloca [16 x float], align 4, !taffo.info !37, !taffo.initweight !31
  %x = alloca [16 x float], align 4, !taffo.info !34, !taffo.initweight !31
  %y = alloca [16 x float], align 4, !taffo.info !40, !taffo.initweight !31, !taffo.target !42
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !43, !taffo.initweight !44
  %beta2 = bitcast float* %beta to i8*, !taffo.info !43, !taffo.initweight !44
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.info !45, !taffo.initweight !44
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.info !45, !taffo.initweight !44
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.info !46, !taffo.initweight !44
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.info !45, !taffo.initweight !44
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.info !47, !taffo.initweight !44, !taffo.target !42
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !37, !taffo.initweight !44
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !40, !taffo.initweight !44, !taffo.target !42
  call void @init_array.2(i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.info !48, !taffo.initweight !44, !taffo.constinfo !49, !taffo.originalCall !50
  call void @timer_start(), !taffo.constinfo !51
  %0 = load float, float* %alpha, align 4, !taffo.info !52, !taffo.initweight !44
  %1 = load float, float* %beta, align 4, !taffo.info !53, !taffo.initweight !44
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !37, !taffo.initweight !44
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !34, !taffo.initweight !44
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !40, !taffo.initweight !44, !taffo.target !42
  call void @kernel_gesummv.1(i32 noundef 16, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16), !taffo.info !48, !taffo.initweight !54, !taffo.constinfo !49, !taffo.originalCall !55
  call void @timer_stop(), !taffo.constinfo !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !56
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !58
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %i.0, !taffo.info !40, !taffo.initweight !44, !taffo.target !42
  %2 = load float, float* %arrayidx, align 4, !taffo.info !40, !taffo.initweight !54, !taffo.target !42
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %2, float* %arrayidx17, align 4, !taffo.info !60, !taffo.initweight !61, !taffo.target !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !25 !taffo.funinfo !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !71, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !69
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !65
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !73
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !75 !taffo.funinfo !76 !taffo.sourceFunction !55 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !37, !taffo.initweight !77
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !78, !taffo.initweight !77, !taffo.constinfo !79
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !40, !taffo.initweight !77
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.info !78, !taffo.initweight !77, !taffo.constinfo !79
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !58
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !69
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !34, !taffo.initweight !77
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !80
  %0 = load float, float* %arrayidx6, align 4, !taffo.info !34, !taffo.initweight !81
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !34, !taffo.initweight !77
  %1 = load float, float* %arrayidx7, align 4, !taffo.info !34, !taffo.initweight !80
  %mul = fmul float %0, %1, !taffo.info !82, !taffo.initweight !81
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !37, !taffo.initweight !77
  %2 = load float, float* %arrayidx8, align 4, !taffo.info !37, !taffo.initweight !80
  %add = fadd float %mul, %2, !taffo.info !84, !taffo.initweight !81
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !37, !taffo.initweight !77
  store float %add, float* %arrayidx9, align 4, !taffo.info !86, !taffo.initweight !80
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !34, !taffo.initweight !77
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !80
  %3 = load float, float* %arrayidx11, align 4, !taffo.info !34, !taffo.initweight !81
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !34, !taffo.initweight !77
  %4 = load float, float* %arrayidx12, align 4, !taffo.info !34, !taffo.initweight !80
  %mul13 = fmul float %3, %4, !taffo.info !87, !taffo.initweight !81
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !40, !taffo.initweight !77
  %5 = load float, float* %arrayidx14, align 4, !taffo.info !40, !taffo.initweight !80
  %add15 = fadd float %mul13, %5, !taffo.info !88, !taffo.initweight !81
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !40, !taffo.initweight !77
  store float %add15, float* %arrayidx16, align 4, !taffo.info !60, !taffo.initweight !80
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !90

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !37, !taffo.initweight !77
  %6 = load float, float* %arrayidx17, align 4, !taffo.info !37, !taffo.initweight !80
  %mul18 = fmul float %alpha, %6, !taffo.info !91, !taffo.initweight !77
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !40, !taffo.initweight !77
  %7 = load float, float* %arrayidx19, align 4, !taffo.info !40, !taffo.initweight !80
  %mul20 = fmul float %beta, %7, !taffo.info !94, !taffo.initweight !77
  %add21 = fadd float %mul18, %mul20, !taffo.info !96, !taffo.initweight !80
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !40, !taffo.initweight !77
  store float %add21, float* %arrayidx22, align 4, !taffo.info !60, !taffo.initweight !80
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !50 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !48, !taffo.initweight !101, !taffo.constinfo !102
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !104, !taffo.initweight !101, !taffo.constinfo !105
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !108, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !109, !taffo.initweight !54
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !110, !taffo.initweight !61

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !112, !taffo.initweight !54
  %conv = sitofp i32 %rem to float, !taffo.info !114, !taffo.initweight !61
  %conv3 = sitofp i32 %n to float, !taffo.info !115
  %div = fdiv float %conv, %conv3, !taffo.info !116, !taffo.initweight !101
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !116, !taffo.initweight !54
  store float %div, float* %arrayidx, align 4, !taffo.info !78, !taffo.initweight !61
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !117, !taffo.initweight !54
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !78, !taffo.initweight !61, !taffo.constinfo !79
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !118, !taffo.initweight !54
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.info !78, !taffo.initweight !61, !taffo.constinfo !79
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !108, !taffo.initweight !31
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !109, !taffo.initweight !54
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !110, !taffo.initweight !61

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !119, !taffo.initweight !54
  %add = add nsw i32 %mul, 1, !taffo.info !121, !taffo.initweight !61, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !112, !taffo.initweight !101
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !114, !taffo.initweight !77
  %conv12 = sitofp i32 %n to float, !taffo.info !115
  %div13 = fdiv float %conv11, %conv12, !taffo.info !116, !taffo.initweight !80
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !116, !taffo.initweight !54
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !116, !taffo.initweight !54
  store float %div13, float* %arrayidx15, align 4, !taffo.info !78, !taffo.initweight !61
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !119, !taffo.initweight !54
  %add17 = add nsw i32 %mul16, 2, !taffo.info !123, !taffo.initweight !61, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !112, !taffo.initweight !101
  %conv19 = sitofp i32 %rem18 to float, !taffo.info !114, !taffo.initweight !77
  %conv20 = sitofp i32 %n to float, !taffo.info !115
  %div21 = fdiv float %conv19, %conv20, !taffo.info !116, !taffo.initweight !80
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !116, !taffo.initweight !54
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.info !116, !taffo.initweight !54
  store float %div21, float* %arrayidx23, align 4, !taffo.info !78, !taffo.initweight !61
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.initweight !54, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !126

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.initweight !54, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !127

for.end26:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4026A66687F455A8}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.500000e+00, double 1.500000e+00}
!31 = !{i32 0}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 1.200000e+00, double 1.200000e+00}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 31}
!36 = !{double 0.000000e+00, double 9.375000e-01}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 32, i32 29}
!39 = !{double 0.000000e+00, double 4.406250e+00}
!40 = !{!41, !1, i1 false, i2 -1}
!41 = !{!"fixp", i32 32, i32 28}
!42 = !{!"y"}
!43 = !{!29, i1 false, i1 false, i2 -1}
!44 = !{i32 1}
!45 = !{!35, i1 false, i1 false, i2 -1}
!46 = !{!38, i1 false, i1 false, i2 -1}
!47 = !{!41, i1 false, i1 false, i2 -1}
!48 = !{i1 false, !30, i1 false, i2 -1}
!49 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!50 = distinct !{null}
!51 = !{i1 false}
!52 = !{!38, !30, i1 false, i2 -1}
!53 = !{!41, !33, i1 false, i2 -1}
!54 = !{i32 2}
!55 = distinct !{null}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 1.700000e+01}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 1.000000e+00}
!60 = !{i1 false, !1, i1 false, i2 -1}
!61 = !{i32 3}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.700000e+01}
!64 = distinct !{!64, !23}
!65 = !{i1 false, i1 false, i1 false}
!66 = !{i32 1, !67, i32 1, !0}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.600000e+01, double 1.600000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 0.000000e+00}
!73 = !{i1 false, i1 false, i1 false, i1 false}
!74 = distinct !{!74, !23}
!75 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!76 = !{i32 1, !67, i32 1, !52, i32 1, !53, i32 1, !34, i32 1, !34, i32 1, !37, i32 1, !34, i32 1, !40}
!77 = !{i32 5}
!78 = !{i1 false, i1 false, i1 false, i2 1}
!79 = !{!71, i1 false}
!80 = !{i32 6}
!81 = !{i32 7}
!82 = !{!38, !83, i1 false, i2 -1}
!83 = !{double 0.000000e+00, double 0x3FEC200000000000}
!84 = !{!38, !85, i1 false, i2 -1}
!85 = !{double 0.000000e+00, double 0x4015240000000000}
!86 = !{i1 false, !39, i1 false, i2 -1}
!87 = !{!35, !83, i1 false, i2 -1}
!88 = !{!41, !89, i1 false, i2 -1}
!89 = !{double 0.000000e+00, double 0x4028686687F455A8}
!90 = distinct !{!90, !23}
!91 = !{!92, !93, i1 false, i2 -1}
!92 = !{!"fixp", i32 32, i32 27}
!93 = !{double 0.000000e+00, double 0x401A700000000000}
!94 = !{!92, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 0x402B2E14A3253396}
!96 = !{!92, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 0x4034330A519299CB}
!98 = distinct !{!98, !23}
!99 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!100 = !{i32 1, !67, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !34, i32 1, !34, i32 1, !37, i32 1, !40}
!101 = !{i32 4}
!102 = !{!103, i1 false}
!103 = !{i1 false, !30, i1 false, i2 0}
!104 = !{i1 false, !33, i1 false, i2 -1}
!105 = !{!106, i1 false}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!108 = !{i1 false, !57, i1 false, i2 1}
!109 = !{i1 false, !59, i1 false, i2 1}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 1.600000e+01}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.500000e+01}
!114 = !{!41, !113, i1 false, i2 1}
!115 = !{!92, !68, i1 false, i2 1}
!116 = !{!35, !36, i1 false, i2 1}
!117 = !{!41, !1, i1 false, i2 1}
!118 = !{!38, !39, i1 false, i2 1}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 2.560000e+02}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 1.000000e+00, double 2.570000e+02}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 2.000000e+00, double 2.580000e+02}
!125 = !{i1 false, !63, i1 false, i2 1}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
