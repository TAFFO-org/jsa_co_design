; ModuleID = './build/bin/fixed/2mm/16/2mm-standard-1-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/2mm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [32 x i8] c"scalar(range(0.0,4.6125) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,0.875) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,0.9) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,0.928571) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [46 x i8] c"target('D') scalar(range(0.0,19.18125) final)\00", section "llvm.metadata", !taffo.info !4
@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.8 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 12) final)\00", section "llvm.metadata", !taffo.info !0
@.str.9 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 14) final)\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !39
  %A = alloca [8 x [12 x float]], align 4, !taffo.initweight !34, !taffo.info !41
  %B = alloca [12 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !43
  %C = alloca [10 x [14 x float]], align 4, !taffo.initweight !34, !taffo.info !45
  %D = alloca [8 x [14 x float]], align 4, !taffo.initweight !34, !taffo.info !47, !taffo.target !48
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !49, !taffo.info !35
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !49, !taffo.info !37
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.initweight !49, !taffo.info !39
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.initweight !49, !taffo.info !41
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.initweight !49, !taffo.info !43
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.initweight !49, !taffo.info !45
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !49, !taffo.info !41
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !49, !taffo.info !43
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !49, !taffo.info !45
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !49, !taffo.info !39
  call void @init_array.2(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.initweight !49, !taffo.info !35, !taffo.originalCall !50, !taffo.constinfo !51
  call void @timer_start(), !taffo.constinfo !52
  %0 = load float, float* %alpha, align 4, !taffo.initweight !49, !taffo.info !35
  %1 = load float, float* %beta, align 4, !taffo.initweight !49, !taffo.info !37
  %arraydecay12 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.initweight !49, !taffo.info !39
  %arraydecay13 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.initweight !49, !taffo.info !41
  %arraydecay14 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.initweight !49, !taffo.info !43
  %arraydecay15 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.initweight !49, !taffo.info !45
  %arraydecay16 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  call void @kernel_2mm.1(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float noundef %0, float noundef %1, [10 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13, [10 x float]* noundef %arraydecay14, [14 x float]* noundef %arraydecay15, [14 x float]* noundef %arraydecay16), !taffo.initweight !53, !taffo.info !35, !taffo.originalCall !54, !taffo.constinfo !51
  call void @timer_stop(), !taffo.constinfo !52
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !59
  %cmp18 = icmp slt i32 %j.0, 14, !taffo.info !57
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %i.0, !taffo.initweight !49, !taffo.info !47, !taffo.target !48
  %arrayidx20 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !53, !taffo.info !47, !taffo.target !48
  %2 = load float, float* %arrayidx20, align 4, !taffo.initweight !61, !taffo.info !47, !taffo.target !48
  %arrayidx21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx22 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.info !6
  store float %2, float* %arrayidx22, align 4, !taffo.initweight !62, !taffo.info !47, !taffo.target !48
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !27
  br label %for.cond17, !llvm.loop !65

for.end:                                          ; preds = %for.cond17
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !68

for.end25:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !70 !taffo.funinfo !71 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.equivalentChild !74 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !75
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !34, !taffo.info !80
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !53, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !61, !taffo.info !80

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !82
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !53, !taffo.info !82
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !82

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !53, !taffo.info !80
  %add = add nsw i32 %mul, 1, !taffo.initweight !61, !taffo.info !80, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !62, !taffo.info !80
  %conv = sitofp i32 %rem to float, !taffo.initweight !84, !taffo.info !80
  %conv6 = sitofp i32 %ni to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !85, !taffo.info !80
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !53, !taffo.info !86
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !53, !taffo.info !86
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !87

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !53, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !88

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !80
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.initweight !53, !taffo.info !80
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !61, !taffo.info !80

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !82
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.initweight !53, !taffo.info !82
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !61, !taffo.info !82

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !53, !taffo.info !80
  %rem21 = srem i32 %mul20, %nj, !taffo.initweight !61, !taffo.info !80
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !62, !taffo.info !80
  %conv23 = sitofp i32 %nj to float
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !84, !taffo.info !80
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.initweight !53, !taffo.info !86
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !53, !taffo.info !86
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !89

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !53, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !90

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.initweight !34, !taffo.info !80
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.initweight !53, !taffo.info !80
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !61, !taffo.info !80

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.initweight !34, !taffo.info !82
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.initweight !53, !taffo.info !82
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !61, !taffo.info !82

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !53, !taffo.info !80
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !61, !taffo.info !80, !taffo.constinfo !27
  %rem44 = srem i32 %add43, %nl, !taffo.initweight !62, !taffo.info !80
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !84, !taffo.info !80
  %conv46 = sitofp i32 %nl to float
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !85, !taffo.info !80
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !53, !taffo.info !86
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.initweight !53, !taffo.info !86
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !91

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.initweight !53, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !92

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.initweight !34, !taffo.info !80
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.initweight !53, !taffo.info !80
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !61, !taffo.info !80

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.initweight !34, !taffo.info !82
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.initweight !53, !taffo.info !82
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !61, !taffo.info !82

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.initweight !53, !taffo.info !80
  %rem66 = srem i32 %mul65, %nk, !taffo.initweight !61, !taffo.info !80
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !62, !taffo.info !80
  %conv68 = sitofp i32 %nk to float
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !84, !taffo.info !80
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.initweight !53, !taffo.info !86
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.initweight !53, !taffo.info !86
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !93

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.initweight !53, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !94

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.initweight !34, !taffo.info !80
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.initweight !53, !taffo.info !80
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !61, !taffo.info !80

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.initweight !34, !taffo.info !82
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.initweight !53, !taffo.info !82
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !61, !taffo.info !82

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.initweight !53, !taffo.info !86
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.initweight !53, !taffo.info !86
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !61, !taffo.info !86, !taffo.constinfo !95
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.initweight !53, !taffo.info !82, !taffo.constinfo !27
  br label %for.cond82, !llvm.loop !98

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.initweight !53, !taffo.info !80, !taffo.constinfo !27
  br label %for.cond78, !llvm.loop !99

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.equivalentChild !100 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, %ni
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ]
  %cmp2 = icmp slt i32 %j.0, %nj
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !84, !taffo.info !86, !taffo.constinfo !95
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp6 = icmp slt i32 %k.0, %nk
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx9, align 4
  %mul = fmul float %alpha, %0
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %mul, %1
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx14, align 4
  %add = fadd float %2, %mul12
  store float %add, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !101

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !102

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !103

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ]
  %cmp22 = icmp slt i32 %i.1, %ni
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ]
  %cmp25 = icmp slt i32 %j.1, %nl
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1
  %3 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %3, %beta
  store float %mul29, float* %arrayidx28, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ]
  %cmp31 = icmp slt i32 %k.1, %nj
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1
  %4 = load float, float* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %4, %5
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1
  %6 = load float, float* %arrayidx39, align 4
  %add40 = fadd float %6, %mul37
  store float %add40, float* %arrayidx39, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !104

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !105

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond21, !llvm.loop !106

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !107 !taffo.funinfo !108 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !113
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !113
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !96
  %add = add nsw i32 %mul, %j.0, !taffo.info !96
  %rem = srem i32 %add, 20, !taffo.info !96, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !113
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !115
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !116

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !117

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !113
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !57
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !113
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.initweight !84, !taffo.info !39
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !85, !taffo.info !39
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.initweight !84, !taffo.info !86, !taffo.constinfo !95
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !57
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !113
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !84, !taffo.info !41
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.initweight !85, !taffo.info !41
  %0 = load float, float* %arrayidx9, align 4, !taffo.initweight !122, !taffo.info !41
  %mul = fmul float %alpha, %0, !taffo.initweight !84, !taffo.info !123
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0, !taffo.initweight !84, !taffo.info !43
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !85, !taffo.info !43
  %1 = load float, float* %arrayidx11, align 4, !taffo.initweight !122, !taffo.info !43
  %mul12 = fmul float %mul, %1, !taffo.initweight !85, !taffo.info !125
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.initweight !84, !taffo.info !39
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !85, !taffo.info !39
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !122, !taffo.info !39
  %add = fadd float %2, %mul12, !taffo.initweight !122, !taffo.info !127
  store float %add, float* %arrayidx14, align 4, !taffo.initweight !122, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !129

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !130

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !131

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !57
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !113
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !57
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !113
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.initweight !84, !taffo.info !47
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1, !taffo.initweight !85, !taffo.info !47
  %3 = load float, float* %arrayidx28, align 4, !taffo.initweight !122, !taffo.info !47
  %mul29 = fmul float %3, %beta, !taffo.initweight !84, !taffo.info !132
  store float %mul29, float* %arrayidx28, align 4, !taffo.initweight !85, !taffo.info !37
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !57
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !113
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1, !taffo.initweight !84, !taffo.info !39
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1, !taffo.initweight !85, !taffo.info !39
  %4 = load float, float* %arrayidx34, align 4, !taffo.initweight !122, !taffo.info !39
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1, !taffo.initweight !84, !taffo.info !45
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1, !taffo.initweight !85, !taffo.info !45
  %5 = load float, float* %arrayidx36, align 4, !taffo.initweight !122, !taffo.info !45
  %mul37 = fmul float %4, %5, !taffo.initweight !134, !taffo.info !135
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.initweight !84, !taffo.info !47
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1, !taffo.initweight !85, !taffo.info !47
  %6 = load float, float* %arrayidx39, align 4, !taffo.initweight !122, !taffo.info !47
  %add40 = fadd float %6, %mul37, !taffo.initweight !134, !taffo.info !137
  store float %add40, float* %arrayidx39, align 4, !taffo.initweight !122, !taffo.info !47
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !139

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !140

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !113, !taffo.constinfo !27
  br label %for.cond21, !llvm.loop !141

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !142 !taffo.funinfo !143 !taffo.sourceFunction !50 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !62, !taffo.info !35, !taffo.constinfo !75
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !62, !taffo.info !37, !taffo.constinfo !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.initweight !34, !taffo.info !80
  %cmp = icmp slt i32 %i.0, %ni, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp, label %for.body, label %for.end10, !taffo.initweight !61, !taffo.info !80

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !82
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !82

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !53, !taffo.info !145
  %add = add nsw i32 %mul, 1, !taffo.initweight !61, !taffo.info !147, !taffo.constinfo !27
  %rem = srem i32 %add, %ni, !taffo.initweight !62, !taffo.info !149
  %conv = sitofp i32 %rem to float, !taffo.initweight !84, !taffo.info !149
  %conv6 = sitofp i32 %ni to float, !taffo.info !109
  %div = fdiv float %conv, %conv6, !taffo.initweight !85, !taffo.info !41
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.initweight !53, !taffo.info !151
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !53, !taffo.info !151
  store float %div, float* %arrayidx7, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !154

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.initweight !53, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !157

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.initweight !34, !taffo.info !80
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.initweight !61, !taffo.info !80

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !82
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.initweight !61, !taffo.info !82

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.initweight !53, !taffo.info !158
  %rem21 = srem i32 %mul20, %nj, !taffo.initweight !61, !taffo.info !160
  %conv22 = sitofp i32 %rem21 to float, !taffo.initweight !62, !taffo.info !160
  %conv23 = sitofp i32 %nj to float, !taffo.info !22
  %div24 = fdiv float %conv22, %conv23, !taffo.initweight !84, !taffo.info !43
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.initweight !53, !taffo.info !161
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.initweight !53, !taffo.info !161
  store float %div24, float* %arrayidx26, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  br label %for.cond15, !llvm.loop !162

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.initweight !53, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !163

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.initweight !34, !taffo.info !80
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.initweight !61, !taffo.info !80

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.initweight !34, !taffo.info !82
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.initweight !61, !taffo.info !82

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.initweight !53, !taffo.info !164, !taffo.constinfo !27
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.initweight !53, !taffo.info !166
  %add43 = add nsw i32 %mul42, 1, !taffo.initweight !61, !taffo.info !168, !taffo.constinfo !27
  %rem44 = srem i32 %add43, %nl, !taffo.initweight !62, !taffo.info !170
  %conv45 = sitofp i32 %rem44 to float, !taffo.initweight !84, !taffo.info !170
  %conv46 = sitofp i32 %nl to float, !taffo.info !111
  %div47 = fdiv float %conv45, %conv46, !taffo.initweight !85, !taffo.info !172
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.initweight !53, !taffo.info !174
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.initweight !53, !taffo.info !174
  store float %div47, float* %arrayidx49, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !175

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.initweight !53, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !176

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.initweight !34, !taffo.info !80
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.initweight !61, !taffo.info !80

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.initweight !34, !taffo.info !82
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.initweight !61, !taffo.info !82

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.initweight !53, !taffo.info !177, !taffo.constinfo !27
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.initweight !53, !taffo.info !179
  %rem66 = srem i32 %mul65, %nk, !taffo.initweight !61, !taffo.info !181
  %conv67 = sitofp i32 %rem66 to float, !taffo.initweight !62, !taffo.info !181
  %conv68 = sitofp i32 %nk to float, !taffo.info !120
  %div69 = fdiv float %conv67, %conv68, !taffo.initweight !84, !taffo.info !183
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.initweight !53, !taffo.info !185
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.initweight !53, !taffo.info !185
  store float %div69, float* %arrayidx71, align 4, !taffo.initweight !61, !taffo.info !86
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !186

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.initweight !53, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond56, !llvm.loop !187

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.initweight !34, !taffo.info !80
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.initweight !61, !taffo.info !80

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.initweight !34, !taffo.info !82
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.initweight !53, !taffo.info !144
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.initweight !61, !taffo.info !82

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.initweight !53, !taffo.info !188
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.initweight !53, !taffo.info !188
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.initweight !61, !taffo.info !86, !taffo.constinfo !95
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.initweight !53, !taffo.info !152, !taffo.constinfo !27
  br label %for.cond82, !llvm.loop !189

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.initweight !53, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond78, !llvm.loop !190

for.end93:                                        ; preds = %for.cond78
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
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40332E6666666666}
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
!40 = !{double 0.000000e+00, double 4.612500e+00}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 8.750000e-01}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 9.000000e-01}
!45 = !{i1 false, !46, i1 false, i2 -1}
!46 = !{double 0.000000e+00, double 9.285710e-01}
!47 = !{i1 false, !7, i1 false, i2 -1}
!48 = !{!"D"}
!49 = !{i32 1}
!50 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array}
!51 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!52 = !{i1 false}
!53 = !{i32 2}
!54 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 9.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 1.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 1.350000e+02}
!61 = !{i32 3}
!62 = !{i32 4}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.350000e+02}
!65 = distinct !{!65, !29}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 9.000000e+00}
!68 = distinct !{!68, !29}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!71 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!72 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!73 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!74 = !{void (i32, i32, i32, i32, float*, float*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*, [10 x float]*)* @init_array.2}
!75 = !{!76, i1 false}
!76 = !{i1 false, !36, i1 false, i2 0}
!77 = !{!78, i1 false}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!80 = !{i1 false, !81, i1 false, i2 -1}
!81 = !{double 0.000000e+00, double 1.200000e+01}
!82 = !{i1 false, !83, i1 false, i2 -1}
!83 = !{double 0.000000e+00, double 1.400000e+01}
!84 = !{i32 5}
!85 = !{i32 6}
!86 = !{i1 false, i1 false, i1 false, i2 1}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = !{!96, i1 false}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 0.000000e+00}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = !{void (i32, i32, i32, i32, float, float, [10 x float]*, [12 x float]*, [10 x float]*, [14 x float]*, [14 x float]*)* @kernel_2mm.1}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = !{i32 -1, i32 -1, i32 -1}
!108 = !{i32 1, !109, i32 1, !111, i32 1, !6}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 8.000000e+00, double 8.000000e+00}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 1.400000e+01, double 1.400000e+01}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 1.000000e+00}
!115 = !{i1 false, i1 false, i1 false}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!119 = !{i32 1, !109, i32 1, !22, i32 1, !120, i32 1, !111, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !45, i32 1, !47}
!120 = !{i1 false, !121, i1 false, i2 0}
!121 = !{double 1.200000e+01, double 1.200000e+01}
!122 = !{i32 7}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 1.312500e+00}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x3FF2E66666666667}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 5.793750e+00}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 2.301750e+01}
!134 = !{i32 8}
!135 = !{i1 false, !136, i1 false, i2 -1}
!136 = !{double 0.000000e+00, double 0x401121D39898E89A}
!137 = !{i1 false, !138, i1 false, i2 -1}
!138 = !{double 0.000000e+00, double 0x403776DB4C8CA08C}
!139 = distinct !{!139, !29}
!140 = distinct !{!140, !29}
!141 = distinct !{!141, !29}
!142 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!143 = !{i32 1, !109, i32 1, !22, i32 1, !120, i32 1, !111, i32 1, !35, i32 1, !37, i32 1, !41, i32 1, !43, i32 1, !45, i32 1, !47, i32 1, !39}
!144 = !{i1 false, !58, i1 false, i2 -1}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double 0.000000e+00, double 1.680000e+02}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double 1.000000e+00, double 1.690000e+02}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 0.000000e+00, double 7.000000e+00}
!151 = !{i1 false, !42, i1 false, i2 1}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 1.000000e+00, double 1.500000e+01}
!154 = distinct !{!154, !29}
!155 = !{i1 false, !156, i1 false, i2 -1}
!156 = !{double 1.000000e+00, double 1.300000e+01}
!157 = distinct !{!157, !29}
!158 = !{i1 false, !159, i1 false, i2 -1}
!159 = !{double 0.000000e+00, double 1.800000e+02}
!160 = !{i1 false, !56, i1 false, i2 -1}
!161 = !{i1 false, !44, i1 false, i2 1}
!162 = distinct !{!162, !29}
!163 = distinct !{!163, !29}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 3.000000e+00, double 1.700000e+01}
!166 = !{i1 false, !167, i1 false, i2 -1}
!167 = !{double 0.000000e+00, double 2.040000e+02}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 1.000000e+00, double 2.050000e+02}
!170 = !{i1 false, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 1.300000e+01}
!172 = !{i1 false, !173, i1 false, i2 -1}
!173 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!174 = !{i1 false, !46, i1 false, i2 1}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !29}
!177 = !{i1 false, !178, i1 false, i2 -1}
!178 = !{double 2.000000e+00, double 1.600000e+01}
!179 = !{i1 false, !180, i1 false, i2 -1}
!180 = !{double 0.000000e+00, double 1.920000e+02}
!181 = !{i1 false, !182, i1 false, i2 -1}
!182 = !{double 0.000000e+00, double 1.100000e+01}
!183 = !{i1 false, !184, i1 false, i2 -1}
!184 = !{double 0.000000e+00, double 0x3FED555555555555}
!185 = !{i1 false, !7, i1 false, i2 1}
!186 = distinct !{!186, !29}
!187 = distinct !{!187, !29}
!188 = !{i1 false, !40, i1 false, i2 1}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
