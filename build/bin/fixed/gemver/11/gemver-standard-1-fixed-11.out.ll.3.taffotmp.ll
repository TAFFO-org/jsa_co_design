; ModuleID = './build/bin/fixed/gemver/11/gemver-standard-1-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/gemver.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(1.2,1.2) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,1.115625) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [33 x i8] c"scalar(range(0.0125,0.25) final)\00", section "llvm.metadata", !taffo.info !0
@.str.6 = private unnamed_addr constant [31 x i8] c"scalar(range(0.025,0.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [39 x i8] c"scalar(range(0.008333,0.166667) final)\00", section "llvm.metadata", !taffo.info !0
@.str.8 = private unnamed_addr constant [47 x i8] c"target('w') scalar(range(0.0,18.203592) final)\00", section "llvm.metadata", !taffo.info !4
@.str.9 = private unnamed_addr constant [34 x i8] c"scalar(range(0.0,1.132656) final)\00", section "llvm.metadata", !taffo.info !0
@.str.10 = private unnamed_addr constant [35 x i8] c"scalar(range(0.00625,0.125) final)\00", section "llvm.metadata", !taffo.info !0
@.str.11 = private unnamed_addr constant [39 x i8] c"scalar(range(0.005556,0.111111) final)\00", section "llvm.metadata", !taffo.info !0
@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !8
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !10
@.str.12 = private unnamed_addr constant [26 x i8] c"scalar(range(0,20) final)\00", section "llvm.metadata", !taffo.info !0
@.str.13 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !12
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !14

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !23 !taffo.funinfo !24 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !25
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !28
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !34 !taffo.funinfo !34 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !34 !taffo.funinfo !34 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.start !37 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !38, !taffo.info !39
  %beta = alloca float, align 4, !taffo.initweight !38, !taffo.info !41
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !38, !taffo.info !43
  %u1 = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !44
  %v1 = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !46
  %u2 = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !48
  %v2 = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !50
  %w = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !52, !taffo.target !53
  %x = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !54
  %y = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !55
  %z = alloca [20 x float], align 4, !taffo.initweight !38, !taffo.info !57
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !59, !taffo.info !39
  %beta2 = bitcast float* %beta to i8*, !taffo.initweight !59, !taffo.info !41
  %A3 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !59, !taffo.info !43
  %u14 = bitcast [20 x float]* %u1 to i8*, !taffo.initweight !59, !taffo.info !44
  %v15 = bitcast [20 x float]* %v1 to i8*, !taffo.initweight !59, !taffo.info !46
  %u26 = bitcast [20 x float]* %u2 to i8*, !taffo.initweight !59, !taffo.info !48
  %v27 = bitcast [20 x float]* %v2 to i8*, !taffo.initweight !59, !taffo.info !50
  %w8 = bitcast [20 x float]* %w to i8*, !taffo.initweight !59, !taffo.info !52, !taffo.target !53
  %x9 = bitcast [20 x float]* %x to i8*, !taffo.initweight !59, !taffo.info !54
  %y10 = bitcast [20 x float]* %y to i8*, !taffo.initweight !59, !taffo.info !55
  %z11 = bitcast [20 x float]* %z to i8*, !taffo.initweight !59, !taffo.info !57
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !43
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !59, !taffo.info !44
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !59, !taffo.info !46
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !59, !taffo.info !48
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !59, !taffo.info !50
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !59, !taffo.info !52, !taffo.target !53
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !59, !taffo.info !54
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55
  %arraydecay19 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @init_array.2(i32 noundef 20, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %arraydecay, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18, float* noundef %arraydecay19), !taffo.initweight !59, !taffo.info !39, !taffo.originalCall !60, !taffo.constinfo !61
  call void @timer_start(), !taffo.constinfo !62
  %0 = load float, float* %alpha, align 4, !taffo.initweight !59, !taffo.info !39
  %1 = load float, float* %beta, align 4, !taffo.initweight !59, !taffo.info !41
  %arraydecay20 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !59, !taffo.info !43
  %arraydecay21 = getelementptr inbounds [20 x float], [20 x float]* %u1, i32 0, i32 0, !taffo.initweight !59, !taffo.info !44
  %arraydecay22 = getelementptr inbounds [20 x float], [20 x float]* %v1, i32 0, i32 0, !taffo.initweight !59, !taffo.info !46
  %arraydecay23 = getelementptr inbounds [20 x float], [20 x float]* %u2, i32 0, i32 0, !taffo.initweight !59, !taffo.info !48
  %arraydecay24 = getelementptr inbounds [20 x float], [20 x float]* %v2, i32 0, i32 0, !taffo.initweight !59, !taffo.info !50
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 0, !taffo.initweight !59, !taffo.info !52, !taffo.target !53
  %arraydecay26 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !59, !taffo.info !54
  %arraydecay27 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !59, !taffo.info !55
  %arraydecay28 = getelementptr inbounds [20 x float], [20 x float]* %z, i32 0, i32 0, !taffo.initweight !59, !taffo.info !57
  call void @kernel_gemver.1(i32 noundef 20, float noundef %0, float noundef %1, [20 x float]* noundef %arraydecay20, float* noundef %arraydecay21, float* noundef %arraydecay22, float* noundef %arraydecay23, float* noundef %arraydecay24, float* noundef %arraydecay25, float* noundef %arraydecay26, float* noundef %arraydecay27, float* noundef %arraydecay28), !taffo.initweight !63, !taffo.info !39, !taffo.originalCall !64, !taffo.constinfo !61
  call void @timer_stop(), !taffo.constinfo !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc40, %for.inc39 ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !54
  %2 = load float, float* %arrayidx, align 4, !taffo.initweight !63, !taffo.info !54
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !6
  store float %2, float* %arrayidx29, align 4, !taffo.initweight !69, !taffo.info !54
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %w, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !52, !taffo.target !53
  %3 = load float, float* %arrayidx30, align 4, !taffo.initweight !63, !taffo.info !52, !taffo.target !53
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !8
  store float %3, float* %arrayidx31, align 4, !taffo.initweight !69, !taffo.info !52, !taffo.target !53
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp33 = icmp slt i32 %j.0, 20, !taffo.info !67
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %arrayidx35 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !59, !taffo.info !43
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx35, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !43
  %4 = load float, float* %arrayidx36, align 4, !taffo.initweight !69, !taffo.info !43
  %arrayidx37 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !10
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.0, !taffo.info !10
  store float %4, float* %arrayidx38, align 4, !taffo.initweight !72, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !31
  br label %for.cond32, !llvm.loop !75

for.end:                                          ; preds = %for.cond32
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %inc40 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !78

for.end41:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !79
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !80 !taffo.funinfo !81 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.equivalentChild !84 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !85
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.constinfo !87
  %conv = sitofp i32 %n to float, !taffo.initweight !63, !taffo.info !90
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.initweight !38, !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !63, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !69, !taffo.info !91

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !63, !taffo.info !91
  %div = fdiv float %conv5, %conv, !taffo.initweight !63, !taffo.info !90
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %div, float* %arrayidx, align 4, !taffo.initweight !69, !taffo.info !90
  %add = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  %conv6 = sitofp i32 %add to float, !taffo.initweight !69, !taffo.info !91
  %div7 = fdiv float %conv6, %conv, !taffo.initweight !63, !taffo.info !90
  %conv8 = fpext float %div7 to double, !taffo.initweight !69, !taffo.info !90
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !72, !taffo.info !90, !taffo.constinfo !93
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !94, !taffo.info !90
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !69, !taffo.info !90
  %add12 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !69, !taffo.info !91
  %div14 = fdiv float %conv13, %conv, !taffo.initweight !63, !taffo.info !90
  %conv15 = fpext float %div14 to double, !taffo.initweight !69, !taffo.info !90
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !72, !taffo.info !90, !taffo.constinfo !95
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !94, !taffo.info !90
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !69, !taffo.info !90
  %add19 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !69, !taffo.info !91
  %div21 = fdiv float %conv20, %conv, !taffo.initweight !63, !taffo.info !90
  %conv22 = fpext float %div21 to double, !taffo.initweight !69, !taffo.info !90
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !72, !taffo.info !90, !taffo.constinfo !98
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !94, !taffo.info !90
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !69, !taffo.info !90
  %add26 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !69, !taffo.info !91
  %div28 = fdiv float %conv27, %conv, !taffo.initweight !63, !taffo.info !90
  %conv29 = fpext float %div28 to double, !taffo.initweight !69, !taffo.info !90
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !72, !taffo.info !90, !taffo.constinfo !101
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !94, !taffo.info !90
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !69, !taffo.info !90
  %add33 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !69, !taffo.info !91
  %div35 = fdiv float %conv34, %conv, !taffo.initweight !63, !taffo.info !90
  %conv36 = fpext float %div35 to double, !taffo.initweight !69, !taffo.info !90
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !72, !taffo.info !90, !taffo.constinfo !104
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !94, !taffo.info !90
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !69, !taffo.info !90
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !69, !taffo.info !90, !taffo.constinfo !107
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !69, !taffo.info !90, !taffo.constinfo !107
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !38, !taffo.info !91
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.initweight !63, !taffo.info !91
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !69, !taffo.info !91

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !63, !taffo.info !91
  %rem = srem i32 %mul, %n, !taffo.initweight !69, !taffo.info !91
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !91
  %conv47 = sitofp i32 %n to float
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !94, !taffo.info !91
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !63, !taffo.info !90
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !90
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !69, !taffo.info !90
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  br label %for.cond42, !llvm.loop !110

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !91, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !111

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !82 !taffo.funinfo !83 !taffo.equivalentChild !112 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0
  %1 = load float, float* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0
  %2 = load float, float* %arrayidx6, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0
  %3 = load float, float* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0
  %4 = load float, float* %arrayidx8, align 4
  %mul9 = fmul float %3, %4
  %add10 = fadd float %add, %mul9
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0
  store float %add10, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !113

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !114

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ]
  %cmp17 = icmp slt i32 %i.1, %n
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ]
  %cmp20 = icmp slt i32 %j.1, %n
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1
  %5 = load float, float* %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1
  %6 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %beta, %6
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1
  %7 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %mul25, %7
  %add28 = fadd float %5, %mul27
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1
  store float %add28, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.constinfo !31
  br label %for.cond19, !llvm.loop !115

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.constinfo !31
  br label %for.cond16, !llvm.loop !116

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ]
  %cmp37 = icmp slt i32 %i.2, %n
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2
  %8 = load float, float* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2
  %9 = load float, float* %arrayidx40, align 4
  %add41 = fadd float %8, %9
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2
  store float %add41, float* %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.constinfo !31
  br label %for.cond36, !llvm.loop !117

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ]
  %cmp47 = icmp slt i32 %i.3, %n
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ]
  %cmp50 = icmp slt i32 %j.2, %n
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3
  %10 = load float, float* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2
  %11 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %alpha, %11
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2
  %12 = load float, float* %arrayidx56, align 4
  %mul57 = fmul float %mul55, %12
  %add58 = fadd float %10, %mul57
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3
  store float %add58, float* %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.constinfo !31
  br label %for.cond49, !llvm.loop !118

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.constinfo !31
  br label %for.cond46, !llvm.loop !119

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !120 !taffo.funinfo !121 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !124
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !124
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !108
  %add = add nsw i32 %mul, %j.0, !taffo.info !108
  %rem = srem i32 %add, 20, !taffo.info !108, !taffo.constinfo !31
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !124
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !126
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !10
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !10
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !10
  %conv = fpext float %2 to double, !taffo.info !10
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv), !taffo.constinfo !127
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !128

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !129

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !67
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !124
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !108, !taffo.constinfo !31
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !124
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !126
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !6
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !6
  %conv21 = fpext float %5 to double, !taffo.info !6
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv21), !taffo.constinfo !127
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond10, !llvm.loop !130

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !67
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !124
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !108, !taffo.constinfo !31
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !124
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !126
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !8
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !8
  %conv37 = fpext float %8 to double, !taffo.info !8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %conv37), !taffo.constinfo !127
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond26, !llvm.loop !131

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !35 !taffo.funinfo !36 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.1(i32 noundef %n, float noundef %alpha, float noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !132 !taffo.funinfo !133 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !124
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !124
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !94, !taffo.info !43
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !134, !taffo.info !43
  %0 = load float, float* %arrayidx4, align 4, !taffo.initweight !135, !taffo.info !43
  %arrayidx5 = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !94, !taffo.info !44
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !134, !taffo.info !44
  %arrayidx6 = getelementptr inbounds float, float* %v1, i32 %j.0, !taffo.initweight !94, !taffo.info !46
  %2 = load float, float* %arrayidx6, align 4, !taffo.initweight !134, !taffo.info !46
  %mul = fmul float %1, %2, !taffo.initweight !135, !taffo.info !136
  %add = fadd float %0, %mul, !taffo.initweight !138, !taffo.info !139
  %arrayidx7 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !94, !taffo.info !48
  %3 = load float, float* %arrayidx7, align 4, !taffo.initweight !134, !taffo.info !48
  %arrayidx8 = getelementptr inbounds float, float* %v2, i32 %j.0, !taffo.initweight !94, !taffo.info !50
  %4 = load float, float* %arrayidx8, align 4, !taffo.initweight !134, !taffo.info !50
  %mul9 = fmul float %3, %4, !taffo.initweight !135, !taffo.info !141
  %add10 = fadd float %add, %mul9, !taffo.initweight !138, !taffo.info !143
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !94, !taffo.info !43
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !134, !taffo.info !43
  store float %add10, float* %arrayidx12, align 4, !taffo.initweight !135, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond1, !llvm.loop !145

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !146

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !67
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !124
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !67
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !124
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.initweight !94, !taffo.info !54
  %5 = load float, float* %arrayidx22, align 4, !taffo.initweight !134, !taffo.info !54
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.initweight !94, !taffo.info !43
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %i.1, !taffo.initweight !134, !taffo.info !43
  %6 = load float, float* %arrayidx24, align 4, !taffo.initweight !135, !taffo.info !43
  %mul25 = fmul float %beta, %6, !taffo.initweight !94, !taffo.info !147
  %arrayidx26 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.initweight !94, !taffo.info !55
  %7 = load float, float* %arrayidx26, align 4, !taffo.initweight !134, !taffo.info !55
  %mul27 = fmul float %mul25, %7, !taffo.initweight !134, !taffo.info !149
  %add28 = fadd float %5, %mul27, !taffo.initweight !135, !taffo.info !151
  %arrayidx29 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.initweight !94, !taffo.info !54
  store float %add28, float* %arrayidx29, align 4, !taffo.initweight !134, !taffo.info !54
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond19, !llvm.loop !153

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond16, !llvm.loop !154

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !67
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !124
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !94, !taffo.info !54
  %8 = load float, float* %arrayidx39, align 4, !taffo.initweight !134, !taffo.info !54
  %arrayidx40 = getelementptr inbounds float, float* %z, i32 %i.2, !taffo.initweight !94, !taffo.info !57
  %9 = load float, float* %arrayidx40, align 4, !taffo.initweight !134, !taffo.info !57
  %add41 = fadd float %8, %9, !taffo.initweight !135, !taffo.info !155
  %arrayidx42 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !94, !taffo.info !54
  store float %add41, float* %arrayidx42, align 4, !taffo.initweight !134, !taffo.info !54
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond36, !llvm.loop !157

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !67
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !124
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !67
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !124
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.initweight !94, !taffo.info !52
  %10 = load float, float* %arrayidx52, align 4, !taffo.initweight !134, !taffo.info !52
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.3, !taffo.initweight !94, !taffo.info !43
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx53, i32 0, i32 %j.2, !taffo.initweight !134, !taffo.info !43
  %11 = load float, float* %arrayidx54, align 4, !taffo.initweight !135, !taffo.info !43
  %mul55 = fmul float %alpha, %11, !taffo.initweight !94, !taffo.info !158
  %arrayidx56 = getelementptr inbounds float, float* %x, i32 %j.2, !taffo.initweight !94, !taffo.info !54
  %12 = load float, float* %arrayidx56, align 4, !taffo.initweight !134, !taffo.info !54
  %mul57 = fmul float %mul55, %12, !taffo.initweight !134, !taffo.info !160
  %add58 = fadd float %10, %mul57, !taffo.initweight !135, !taffo.info !162
  %arrayidx59 = getelementptr inbounds float, float* %w, i32 %i.3, !taffo.initweight !94, !taffo.info !52
  store float %add58, float* %arrayidx59, align 4, !taffo.initweight !134, !taffo.info !52
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond49, !llvm.loop !164

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !124, !taffo.constinfo !31
  br label %for.cond46, !llvm.loop !165

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [20 x float]* noundef %A, float* noundef %u1, float* noundef %v1, float* noundef %u2, float* noundef %v2, float* noundef %w, float* noundef %x, float* noundef %y, float* noundef %z) #0 !taffo.initweight !166 !taffo.funinfo !133 !taffo.sourceFunction !60 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !72, !taffo.info !39, !taffo.constinfo !85
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.initweight !72, !taffo.info !41, !taffo.constinfo !87
  %conv = sitofp i32 %n to float, !taffo.initweight !63, !taffo.info !167
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.initweight !38, !taffo.info !91
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !63, !taffo.info !168
  br i1 %cmp, label %for.body, label %for.end53, !taffo.initweight !69, !taffo.info !91

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.initweight !63, !taffo.info !91
  %div = fdiv float %conv5, %conv, !taffo.initweight !63, !taffo.info !169
  %arrayidx = getelementptr inbounds float, float* %u1, i32 %i.0, !taffo.initweight !63, !taffo.info !170
  store float %div, float* %arrayidx, align 4, !taffo.initweight !69, !taffo.info !90
  %add = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  %conv6 = sitofp i32 %add to float, !taffo.initweight !69, !taffo.info !171
  %div7 = fdiv float %conv6, %conv, !taffo.initweight !63, !taffo.info !172
  %conv8 = fpext float %div7 to double, !taffo.initweight !69, !taffo.info !172
  %div9 = fdiv double %conv8, 2.000000e+00, !taffo.initweight !72, !taffo.info !174, !taffo.constinfo !93
  %conv10 = fptrunc double %div9 to float, !taffo.initweight !94, !taffo.info !176
  %arrayidx11 = getelementptr inbounds float, float* %u2, i32 %i.0, !taffo.initweight !63, !taffo.info !178
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !69, !taffo.info !90
  %add12 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  %conv13 = sitofp i32 %add12 to float, !taffo.initweight !69, !taffo.info !171
  %div14 = fdiv float %conv13, %conv, !taffo.initweight !63, !taffo.info !172
  %conv15 = fpext float %div14 to double, !taffo.initweight !69, !taffo.info !172
  %div16 = fdiv double %conv15, 4.000000e+00, !taffo.initweight !72, !taffo.info !179, !taffo.constinfo !95
  %conv17 = fptrunc double %div16 to float, !taffo.initweight !94, !taffo.info !181
  %arrayidx18 = getelementptr inbounds float, float* %v1, i32 %i.0, !taffo.initweight !63, !taffo.info !183
  store float %conv17, float* %arrayidx18, align 4, !taffo.initweight !69, !taffo.info !90
  %add19 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  %conv20 = sitofp i32 %add19 to float, !taffo.initweight !69, !taffo.info !171
  %div21 = fdiv float %conv20, %conv, !taffo.initweight !63, !taffo.info !172
  %conv22 = fpext float %div21 to double, !taffo.initweight !69, !taffo.info !172
  %div23 = fdiv double %conv22, 6.000000e+00, !taffo.initweight !72, !taffo.info !184, !taffo.constinfo !98
  %conv24 = fptrunc double %div23 to float, !taffo.initweight !94, !taffo.info !186
  %arrayidx25 = getelementptr inbounds float, float* %v2, i32 %i.0, !taffo.initweight !63, !taffo.info !188
  store float %conv24, float* %arrayidx25, align 4, !taffo.initweight !69, !taffo.info !90
  %add26 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  %conv27 = sitofp i32 %add26 to float, !taffo.initweight !69, !taffo.info !171
  %div28 = fdiv float %conv27, %conv, !taffo.initweight !63, !taffo.info !172
  %conv29 = fpext float %div28 to double, !taffo.initweight !69, !taffo.info !172
  %div30 = fdiv double %conv29, 8.000000e+00, !taffo.initweight !72, !taffo.info !189, !taffo.constinfo !101
  %conv31 = fptrunc double %div30 to float, !taffo.initweight !94, !taffo.info !191
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !63, !taffo.info !193
  store float %conv31, float* %arrayidx32, align 4, !taffo.initweight !69, !taffo.info !90
  %add33 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  %conv34 = sitofp i32 %add33 to float, !taffo.initweight !69, !taffo.info !171
  %div35 = fdiv float %conv34, %conv, !taffo.initweight !63, !taffo.info !172
  %conv36 = fpext float %div35 to double, !taffo.initweight !69, !taffo.info !172
  %div37 = fdiv double %conv36, 9.000000e+00, !taffo.initweight !72, !taffo.info !194, !taffo.constinfo !104
  %conv38 = fptrunc double %div37 to float, !taffo.initweight !94, !taffo.info !196
  %arrayidx39 = getelementptr inbounds float, float* %z, i32 %i.0, !taffo.initweight !63, !taffo.info !198
  store float %conv38, float* %arrayidx39, align 4, !taffo.initweight !69, !taffo.info !90
  %arrayidx40 = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !63, !taffo.info !199
  store float 0.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !69, !taffo.info !90, !taffo.constinfo !107
  %arrayidx41 = getelementptr inbounds float, float* %w, i32 %i.0, !taffo.initweight !63, !taffo.info !200
  store float 0.000000e+00, float* %arrayidx41, align 4, !taffo.initweight !69, !taffo.info !90, !taffo.constinfo !107
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !38, !taffo.info !91
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.initweight !63, !taffo.info !168
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.initweight !69, !taffo.info !91

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !63, !taffo.info !201
  %rem = srem i32 %mul, %n, !taffo.initweight !69, !taffo.info !203
  %conv46 = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !203
  %conv47 = sitofp i32 %n to float, !taffo.info !122
  %div48 = fdiv float %conv46, %conv47, !taffo.initweight !94, !taffo.info !44
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !63, !taffo.info !205
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i32 %j.0, !taffo.initweight !63, !taffo.info !205
  store float %div48, float* %arrayidx50, align 4, !taffo.initweight !69, !taffo.info !90
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  br label %for.cond42, !llvm.loop !206

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.initweight !63, !taffo.info !171, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !207

for.end53:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.190000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x3FF21F5BE5D9E40D}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0x4032341E9AF5BA2C}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 0x3FF1D9999999999A}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.000000e+01}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.020000e+02}
!16 = !{i32 1, !"NumRegisterParameters", i32 0}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
!25 = !{i1 false, !26}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+01, double 1.000000e+01}
!28 = !{!29, i1 false}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 2.000000e+00, double 2.000000e+00}
!31 = !{i1 false, i1 false}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{}
!35 = !{i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false}
!37 = !{i1 true}
!38 = !{i32 0}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 1.500000e+00, double 1.500000e+00}
!41 = !{i1 false, !42, i1 false, i2 -1}
!42 = !{double 1.200000e+00, double 1.200000e+00}
!43 = !{i1 false, !11, i1 false, i2 -1}
!44 = !{i1 false, !45, i1 false, i2 -1}
!45 = !{double 0.000000e+00, double 0x3FEE666666666666}
!46 = !{i1 false, !47, i1 false, i2 -1}
!47 = !{double 1.250000e-02, double 2.500000e-01}
!48 = !{i1 false, !49, i1 false, i2 -1}
!49 = !{double 2.500000e-02, double 5.000000e-01}
!50 = !{i1 false, !51, i1 false, i2 -1}
!51 = !{double 8.333000e-03, double 1.666670e-01}
!52 = !{i1 false, !9, i1 false, i2 -1}
!53 = !{!"w"}
!54 = !{i1 false, !7, i1 false, i2 -1}
!55 = !{i1 false, !56, i1 false, i2 -1}
!56 = !{double 6.250000e-03, double 1.250000e-01}
!57 = !{i1 false, !58, i1 false, i2 -1}
!58 = !{double 5.556000e-03, double 1.111110e-01}
!59 = !{i32 1}
!60 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false}
!63 = !{i32 2}
!64 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 2.100000e+01}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.000000e+00}
!69 = !{i32 3}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 4.410000e+02}
!72 = !{i32 4}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 4.410000e+02}
!75 = distinct !{!75, !33}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 2.100000e+01}
!78 = distinct !{!78, !33}
!79 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!80 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!81 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!82 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!83 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!84 = !{void (i32, float*, float*, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @init_array.2}
!85 = !{!86, i1 false}
!86 = !{i1 false, !40, i1 false, i2 0}
!87 = !{!88, i1 false}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!90 = !{i1 false, i1 false, i1 false, i2 1}
!91 = !{i1 false, !92, i1 false, i2 -1}
!92 = !{double 0.000000e+00, double 2.000000e+01}
!93 = !{i1 false, !29}
!94 = !{i32 5}
!95 = !{i1 false, !96}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 4.000000e+00, double 4.000000e+00}
!98 = !{i1 false, !99}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 6.000000e+00, double 6.000000e+00}
!101 = !{i1 false, !102}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 8.000000e+00, double 8.000000e+00}
!104 = !{i1 false, !105}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 9.000000e+00, double 9.000000e+00}
!107 = !{!108, i1 false}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 0.000000e+00, double 0.000000e+00}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = !{void (i32, float, float, [20 x float]*, float*, float*, float*, float*, float*, float*, float*, float*)* @kernel_gemver.1}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!121 = !{i32 1, !122, i32 1, !8, i32 1, !6, i32 1, !10}
!122 = !{i1 false, !123, i1 false, i2 0}
!123 = !{double 2.000000e+01, double 2.000000e+01}
!124 = !{i1 false, !125, i1 false, i2 0}
!125 = !{double 1.000000e+00, double 1.000000e+00}
!126 = !{i1 false, i1 false, i1 false}
!127 = !{i1 false, i1 false, i1 false, i1 false}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{!130, !33}
!131 = distinct !{!131, !33}
!132 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!133 = !{i32 1, !122, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !44, i32 1, !46, i32 1, !48, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !55, i32 1, !57}
!134 = !{i32 6}
!135 = !{i32 7}
!136 = !{i1 false, !137, i1 false, i2 -1}
!137 = !{double 0.000000e+00, double 2.375000e-01}
!138 = !{i32 8}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double 0.000000e+00, double 0x3FF5A66666666667}
!141 = !{i1 false, !142, i1 false, i2 -1}
!142 = !{double 2.083250e-04, double 8.333350e-02}
!143 = !{i1 false, !144, i1 false, i2 -1}
!144 = !{double 2.083250e-04, double 0x3FF6FBBBE878FABE}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double 0.000000e+00, double 1.338750e+00}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 0.000000e+00, double 0x3FC56B851EB851EC}
!151 = !{i1 false, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 0x3FF4CCCC89B0EE4A}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = !{i1 false, !156, i1 false, i2 -1}
!156 = !{double 5.556000e-03, double 0x3FF3E67839CD8128}
!157 = distinct !{!157, !33}
!158 = !{i1 false, !159, i1 false, i2 -1}
!159 = !{double 0.000000e+00, double 0x3FFAC66666666667}
!160 = !{i1 false, !161, i1 false, i2 -1}
!161 = !{double 0.000000e+00, double 0x3FFE53AD62A43A08}
!162 = !{i1 false, !163, i1 false, i2 -1}
!163 = !{double 0.000000e+00, double 0x40341959711FFDCC}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!167 = !{i1 false, !123, i1 false, i2 1}
!168 = !{i1 false, !68, i1 false, i2 -1}
!169 = !{i1 false, !68, i1 false, i2 1}
!170 = !{i1 false, !45, i1 false, i2 1}
!171 = !{i1 false, !77, i1 false, i2 -1}
!172 = !{i1 false, !173, i1 false, i2 1}
!173 = !{double 5.000000e-02, double 1.050000e+00}
!174 = !{i1 false, !175, i1 false, i2 1}
!175 = !{double 2.500000e-02, double 5.250000e-01}
!176 = !{i1 false, !177, i1 false, i2 1}
!177 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!178 = !{i1 false, !49, i1 false, i2 1}
!179 = !{i1 false, !180, i1 false, i2 1}
!180 = !{double 1.250000e-02, double 2.625000e-01}
!181 = !{i1 false, !182, i1 false, i2 1}
!182 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!183 = !{i1 false, !47, i1 false, i2 1}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!186 = !{i1 false, !187, i1 false, i2 1}
!187 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!188 = !{i1 false, !51, i1 false, i2 1}
!189 = !{i1 false, !190, i1 false, i2 1}
!190 = !{double 6.250000e-03, double 1.312500e-01}
!191 = !{i1 false, !192, i1 false, i2 1}
!192 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!193 = !{i1 false, !56, i1 false, i2 1}
!194 = !{i1 false, !195, i1 false, i2 1}
!195 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!196 = !{i1 false, !197, i1 false, i2 1}
!197 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!198 = !{i1 false, !58, i1 false, i2 1}
!199 = !{i1 false, !7, i1 false, i2 1}
!200 = !{i1 false, !9, i1 false, i2 1}
!201 = !{i1 false, !202, i1 false, i2 -1}
!202 = !{double 0.000000e+00, double 4.000000e+02}
!203 = !{i1 false, !204, i1 false, i2 -1}
!204 = !{double 0.000000e+00, double 1.900000e+01}
!205 = !{i1 false, !11, i1 false, i2 1}
!206 = distinct !{!206, !33}
!207 = distinct !{!207, !33}
