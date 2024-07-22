; ModuleID = './build/bin/fixed/2mm/24/2mm-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.info !34, !taffo.initweight !31
  %A = alloca [8 x [12 x float]], align 4, !taffo.info !37, !taffo.initweight !31
  %B = alloca [12 x [10 x float]], align 4, !taffo.info !40, !taffo.initweight !31
  %C = alloca [10 x [14 x float]], align 4, !taffo.info !42, !taffo.initweight !31
  %D = alloca [8 x [14 x float]], align 4, !taffo.info !44, !taffo.initweight !31, !taffo.target !46
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !47, !taffo.initweight !48
  %beta2 = bitcast float* %beta to i8*, !taffo.info !47, !taffo.initweight !48
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.info !49, !taffo.initweight !48
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.info !50, !taffo.initweight !48
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.info !50, !taffo.initweight !48
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.info !50, !taffo.initweight !48
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.info !51, !taffo.initweight !48, !taffo.target !46
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !48
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !48
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !42, !taffo.initweight !48
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !44, !taffo.initweight !48, !taffo.target !46
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.info !34, !taffo.initweight !48
  call void @init_array.2(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.info !52, !taffo.initweight !48, !taffo.constinfo !53, !taffo.originalCall !54
  call void @timer_start(), !taffo.constinfo !55
  %0 = load float, float* %alpha, align 4, !taffo.info !28, !taffo.initweight !48
  %1 = load float, float* %beta, align 4, !taffo.info !32, !taffo.initweight !48
  %arraydecay12 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.info !34, !taffo.initweight !48
  %arraydecay13 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !48
  %arraydecay14 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !48
  %arraydecay15 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !42, !taffo.initweight !48
  %arraydecay16 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !44, !taffo.initweight !48, !taffo.target !46
  call void @kernel_2mm.1(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float noundef %0, float noundef %1, [10 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13, [10 x float]* noundef %arraydecay14, [14 x float]* noundef %arraydecay15, [14 x float]* noundef %arraydecay16), !taffo.info !52, !taffo.initweight !56, !taffo.constinfo !53, !taffo.originalCall !57
  call void @timer_stop(), !taffo.constinfo !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp18 = icmp slt i32 %j.0, 14, !taffo.info !60
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %i.0, !taffo.info !44, !taffo.initweight !48, !taffo.target !46
  %arrayidx20 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !44, !taffo.initweight !56, !taffo.target !46
  %2 = load float, float* %arrayidx20, align 4, !taffo.info !44, !taffo.initweight !64, !taffo.target !46
  %arrayidx21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx22 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx22, align 4, !taffo.info !65, !taffo.initweight !66, !taffo.target !46
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %inc = add nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !21
  br label %for.cond17, !llvm.loop !69

for.end:                                          ; preds = %for.cond17
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !70, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !72

for.end25:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !73
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !74 !taffo.funinfo !75 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !82
  %add = add nsw i32 %mul, %j.0, !taffo.info !82
  %rem = srem i32 %add, 20, !taffo.info !82, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !80
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !84
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !73
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !80
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.info !34, !taffo.initweight !91
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !92
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !93, !taffo.initweight !91, !taffo.constinfo !94
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !60
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !80
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !91
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !92
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !95, !taffo.initweight !96
  %mul = fmul float %alpha, %0, !taffo.info !97, !taffo.initweight !91
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0, !taffo.info !40, !taffo.initweight !91
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !40, !taffo.initweight !92
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !99, !taffo.initweight !96
  %mul12 = fmul float %mul, %1, !taffo.info !100, !taffo.initweight !92
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.info !34, !taffo.initweight !91
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !92
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !34, !taffo.initweight !96
  %add = fadd float %2, %mul12, !taffo.info !102, !taffo.initweight !96
  store float %add, float* %arrayidx14, align 4, !taffo.info !104, !taffo.initweight !96
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !105

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !106

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !107

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !60
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !80
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !60
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !80
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !44, !taffo.initweight !91
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1, !taffo.info !44, !taffo.initweight !92
  %3 = load float, float* %arrayidx28, align 4, !taffo.info !44, !taffo.initweight !96
  %mul29 = fmul float %3, %beta, !taffo.info !108, !taffo.initweight !91
  store float %mul29, float* %arrayidx28, align 4, !taffo.info !110, !taffo.initweight !92
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !60
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !80
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1, !taffo.info !34, !taffo.initweight !91
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1, !taffo.info !34, !taffo.initweight !92
  %4 = load float, float* %arrayidx34, align 4, !taffo.info !34, !taffo.initweight !96
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1, !taffo.info !42, !taffo.initweight !91
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1, !taffo.info !42, !taffo.initweight !92
  %5 = load float, float* %arrayidx36, align 4, !taffo.info !111, !taffo.initweight !96
  %mul37 = fmul float %4, %5, !taffo.info !112, !taffo.initweight !114
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !44, !taffo.initweight !91
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1, !taffo.info !44, !taffo.initweight !92
  %6 = load float, float* %arrayidx39, align 4, !taffo.info !44, !taffo.initweight !96
  %add40 = fadd float %6, %mul37, !taffo.info !115, !taffo.initweight !114
  store float %add40, float* %arrayidx39, align 4, !taffo.info !65, !taffo.initweight !96
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !117

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !118

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !119

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !120 !taffo.funinfo !121 !taffo.sourceFunction !54 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !52, !taffo.initweight !66, !taffo.constinfo !122
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !110, !taffo.initweight !66, !taffo.constinfo !124
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !127, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !127, !taffo.initweight !64

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !130, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !130, !taffo.initweight !64

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !132, !taffo.initweight !56
  %add = add nsw i32 %mul, 1, !taffo.info !134, !taffo.initweight !64, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !136, !taffo.initweight !66
  %conv = sitofp i32 %rem to float, !taffo.info !138, !taffo.initweight !91
  %conv6 = sitofp i32 %ni to float, !taffo.info !139
  %div = fdiv float %conv, %conv6, !taffo.info !141, !taffo.initweight !92
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.info !142, !taffo.initweight !56
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !142, !taffo.initweight !56
  store float %div, float* %arrayidx7, align 4, !taffo.info !93, !taffo.initweight !64
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !145

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !146, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !127, !taffo.initweight !31
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !127, !taffo.initweight !64

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !130, !taffo.initweight !31
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !130, !taffo.initweight !64

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !149, !taffo.initweight !56
  %rem21 = srem i32 %mul20, %nj, !taffo.info !151, !taffo.initweight !64
  %conv22 = sitofp i32 %rem21 to float, !taffo.info !152, !taffo.initweight !66
  %conv23 = sitofp i32 %nj to float, !taffo.info !153
  %div24 = fdiv float %conv22, %conv23, !taffo.info !40, !taffo.initweight !91
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.info !154, !taffo.initweight !56
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.info !154, !taffo.initweight !56
  store float %div24, float* %arrayidx26, align 4, !taffo.info !93, !taffo.initweight !64
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !155

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !146, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !156

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !127, !taffo.initweight !31
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !127, !taffo.initweight !64

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !130, !taffo.initweight !31
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !130, !taffo.initweight !64

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !157, !taffo.initweight !56, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !159, !taffo.initweight !56
  %add43 = add nsw i32 %mul42, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !163, !taffo.initweight !66
  %conv45 = sitofp i32 %rem44 to float, !taffo.info !165, !taffo.initweight !91
  %conv46 = sitofp i32 %nl to float, !taffo.info !166
  %div47 = fdiv float %conv45, %conv46, !taffo.info !167, !taffo.initweight !92
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.info !169, !taffo.initweight !56
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.info !169, !taffo.initweight !56
  store float %div47, float* %arrayidx49, align 4, !taffo.info !93, !taffo.initweight !64
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !170

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !146, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !171

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !127, !taffo.initweight !31
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !127, !taffo.initweight !64

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !130, !taffo.initweight !31
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !130, !taffo.initweight !64

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !172, !taffo.initweight !56, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !174, !taffo.initweight !56
  %rem66 = srem i32 %mul65, %nk, !taffo.info !176, !taffo.initweight !64
  %conv67 = sitofp i32 %rem66 to float, !taffo.info !178, !taffo.initweight !66
  %conv68 = sitofp i32 %nk to float, !taffo.info !179
  %div69 = fdiv float %conv67, %conv68, !taffo.info !180, !taffo.initweight !91
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.info !182, !taffo.initweight !56
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.info !182, !taffo.initweight !56
  store float %div69, float* %arrayidx71, align 4, !taffo.info !93, !taffo.initweight !64
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !183

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !146, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !184

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !127, !taffo.initweight !31
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !127, !taffo.initweight !64

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !130, !taffo.initweight !31
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !129, !taffo.initweight !56
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !130, !taffo.initweight !64

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.info !185, !taffo.initweight !56
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.info !185, !taffo.initweight !56
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.info !93, !taffo.initweight !64, !taffo.constinfo !94
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !143, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !186

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !146, !taffo.initweight !56, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !187

for.end93:                                        ; preds = %for.cond78
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40332E6666666666}
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
!35 = !{!"fixp", i32 32, i32 29}
!36 = !{double 0.000000e+00, double 4.612500e+00}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 32, i32 31}
!39 = !{double 0.000000e+00, double 8.750000e-01}
!40 = !{!38, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 9.000000e-01}
!42 = !{!38, !43, i1 false, i2 -1}
!43 = !{double 0.000000e+00, double 9.285710e-01}
!44 = !{!45, !1, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 27}
!46 = !{!"D"}
!47 = !{!29, i1 false, i1 false, i2 -1}
!48 = !{i32 1}
!49 = !{!35, i1 false, i1 false, i2 -1}
!50 = !{!38, i1 false, i1 false, i2 -1}
!51 = !{!45, i1 false, i1 false, i2 -1}
!52 = !{i1 false, !30, i1 false, i2 -1}
!53 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!54 = distinct !{null}
!55 = !{i1 false}
!56 = !{i32 2}
!57 = distinct !{null}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 9.000000e+00}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.350000e+02}
!64 = !{i32 3}
!65 = !{i1 false, !1, i1 false, i2 -1}
!66 = !{i32 4}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 1.350000e+02}
!69 = distinct !{!69, !23}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 9.000000e+00}
!72 = distinct !{!72, !23}
!73 = !{i1 false, i1 false, i1 false, i1 false}
!74 = !{i32 -1, i32 -1, i32 -1}
!75 = !{i32 1, !76, i32 1, !78, i32 1, !0}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 8.000000e+00, double 8.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.400000e+01, double 1.400000e+01}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 1.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 0.000000e+00}
!84 = !{i1 false, i1 false, i1 false}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!88 = !{i32 1, !76, i32 1, !16, i32 1, !89, i32 1, !78, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40, i32 1, !42, i32 1, !44}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.200000e+01, double 1.200000e+01}
!91 = !{i32 5}
!92 = !{i32 6}
!93 = !{i1 false, i1 false, i1 false, i2 1}
!94 = !{!82, i1 false}
!95 = !{!29, !39, i1 false, i2 -1}
!96 = !{i32 7}
!97 = !{!29, !98, i1 false, i2 -1}
!98 = !{double 0.000000e+00, double 1.312500e+00}
!99 = !{!29, !41, i1 false, i2 -1}
!100 = !{!35, !101, i1 false, i2 -1}
!101 = !{double 0.000000e+00, double 0x3FF2E66666666667}
!102 = !{!35, !103, i1 false, i2 -1}
!103 = !{double 0.000000e+00, double 5.793750e+00}
!104 = !{i1 false, !36, i1 false, i2 -1}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = !{!45, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 2.301750e+01}
!110 = !{i1 false, !33, i1 false, i2 -1}
!111 = !{!35, !43, i1 false, i2 -1}
!112 = !{!45, !113, i1 false, i2 -1}
!113 = !{double 0.000000e+00, double 0x401121D39898E89A}
!114 = !{i32 8}
!115 = !{!45, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 0x403776DB4C8CA08C}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = distinct !{!119, !23}
!120 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!121 = !{i32 1, !76, i32 1, !16, i32 1, !89, i32 1, !78, i32 1, !28, i32 1, !32, i32 1, !37, i32 1, !40, i32 1, !42, i32 1, !44, i32 1, !34}
!122 = !{!123, i1 false}
!123 = !{i1 false, !30, i1 false, i2 0}
!124 = !{!125, i1 false}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 1.200000e+01}
!129 = !{i1 false, !61, i1 false, i2 -1}
!130 = !{i1 false, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 1.400000e+01}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 1.680000e+02}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 1.000000e+00, double 1.690000e+02}
!136 = !{i1 false, !137, i1 false, i2 -1}
!137 = !{double 0.000000e+00, double 7.000000e+00}
!138 = !{!35, !137, i1 false, i2 -1}
!139 = !{!140, !77, i1 false, i2 1}
!140 = !{!"fixp", i32 32, i32 28}
!141 = !{!35, !39, i1 false, i2 -1}
!142 = !{!38, !39, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 -1}
!144 = !{double 1.000000e+00, double 1.500000e+01}
!145 = distinct !{!145, !23}
!146 = !{i1 false, !147, i1 false, i2 -1}
!147 = !{double 1.000000e+00, double 1.300000e+01}
!148 = distinct !{!148, !23}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 0.000000e+00, double 1.800000e+02}
!151 = !{i1 false, !59, i1 false, i2 -1}
!152 = !{!140, !59, i1 false, i2 -1}
!153 = !{!140, !17, i1 false, i2 1}
!154 = !{!38, !41, i1 false, i2 1}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = !{i1 false, !158, i1 false, i2 -1}
!158 = !{double 3.000000e+00, double 1.700000e+01}
!159 = !{i1 false, !160, i1 false, i2 -1}
!160 = !{double 0.000000e+00, double 2.040000e+02}
!161 = !{i1 false, !162, i1 false, i2 -1}
!162 = !{double 1.000000e+00, double 2.050000e+02}
!163 = !{i1 false, !164, i1 false, i2 -1}
!164 = !{double 0.000000e+00, double 1.300000e+01}
!165 = !{!140, !164, i1 false, i2 -1}
!166 = !{!140, !79, i1 false, i2 1}
!167 = !{!38, !168, i1 false, i2 -1}
!168 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!169 = !{!38, !43, i1 false, i2 1}
!170 = distinct !{!170, !23}
!171 = distinct !{!171, !23}
!172 = !{i1 false, !173, i1 false, i2 -1}
!173 = !{double 2.000000e+00, double 1.600000e+01}
!174 = !{i1 false, !175, i1 false, i2 -1}
!175 = !{double 0.000000e+00, double 1.920000e+02}
!176 = !{i1 false, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 1.100000e+01}
!178 = !{!140, !177, i1 false, i2 -1}
!179 = !{!140, !90, i1 false, i2 1}
!180 = !{!38, !181, i1 false, i2 -1}
!181 = !{double 0.000000e+00, double 0x3FED555555555555}
!182 = !{!45, !1, i1 false, i2 1}
!183 = distinct !{!183, !23}
!184 = distinct !{!184, !23}
!185 = !{!35, !36, i1 false, i2 1}
!186 = distinct !{!186, !23}
!187 = distinct !{!187, !23}
