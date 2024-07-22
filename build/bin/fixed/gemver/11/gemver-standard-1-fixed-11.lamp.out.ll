; ModuleID = './build/bin/fixed/gemver/11/gemver-standard-1-fixed-11.out.ll'
source_filename = "./sources/gemver.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@w_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@stderr = external global %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !6
@.str.15 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !8

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !17 !taffo.funinfo !18 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !19
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -8192
  %lampsim3 = bitcast i32 %lampsim2 to float
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %lampsim3, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul4 = fmul float %x.0, %x.0
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -8192
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !22
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -8192
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -8192
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -8192
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -8192
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -8192
  %lampsim31 = bitcast i32 %lampsim30 to float
  %cmp7 = fcmp oge float %lampsim31, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %lampsim31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %lampsim31, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %lampsim23, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !28 !taffo.funinfo !28 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.start !31 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !32
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !35
  %A.u2_30fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !37
  %u1.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !38
  %v1.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !41
  %u2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !43
  %v2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !45
  %w.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !47, !taffo.target !49
  %x.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !50
  %y.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !51
  %z.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !53
  %arraydecay.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !37
  %arraydecay12.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u1_31fixp, i32 0, i32 0, !taffo.info !38
  %arraydecay13.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay14.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u1_31fixp, i32 0, i32 0, !taffo.info !43
  %arraydecay15.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay16.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay17.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay18.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay19.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.2_fixp(i32 20, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [20 x i32]* %arraydecay.u2_30fixp, i32* %arraydecay12.u1_31fixp, i32* %arraydecay13.u1_31fixp, i32* %arraydecay14.u1_31fixp, i32* %arraydecay15.u1_31fixp, i32* %arraydecay16.u5_27fixp, i32* %arraydecay17.u2_30fixp, i32* %arraydecay18.u1_31fixp, i32* %arraydecay19.u1_31fixp), !taffo.info !55, !taffo.constinfo !56
  call void @timer_start(), !taffo.constinfo !57
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !32
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !35
  %arraydecay20.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !37
  %arraydecay21.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u1.u1_31fixp, i32 0, i32 0, !taffo.info !38
  %arraydecay22.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v1.u1_31fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay23.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %u2.u1_31fixp, i32 0, i32 0, !taffo.info !43
  %arraydecay24.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %v2.u1_31fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay25.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay26.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay27.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u1_31fixp, i32 0, i32 0, !taffo.info !51
  %arraydecay28.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %z.u1_31fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_gemver.1_fixp(i32 20, i32 %u2_30fixp, i32 %u2_30fixp1, [20 x i32]* %arraydecay20.u2_30fixp, i32* %arraydecay21.u1_31fixp, i32* %arraydecay22.u1_31fixp, i32* %arraydecay23.u1_31fixp, i32* %arraydecay24.u1_31fixp, i32* %arraydecay25.u5_27fixp, i32* %arraydecay26.u2_30fixp, i32* %arraydecay27.u1_31fixp, i32* %arraydecay28.u1_31fixp), !taffo.info !55, !taffo.constinfo !56
  call void @timer_stop(), !taffo.constinfo !57
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc40, %for.inc39 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.u2_30fixp, i32 0, i32 %i.0, !taffo.info !50
  %u2_30fixp2 = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !50
  %0 = uitofp i32 %u2_30fixp2 to float, !taffo.info !50
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -8192
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41D0000000000000, !taffo.info !50
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -8192
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx29, align 4, !taffo.info !62
  %arrayidx30.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %w.u5_27fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %u5_27fixp = load i32, i32* %arrayidx30.u5_27fixp, align 4, !taffo.info !47, !taffo.target !49
  %2 = uitofp i32 %u5_27fixp to float, !taffo.info !47, !taffo.target !49
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -8192
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 0x41A0000000000000, !taffo.info !47, !taffo.target !49
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -8192
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* @w_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx31, align 4, !taffo.info !63, !taffo.target !49
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp33 = icmp slt i32 %j.0, 20, !taffo.info !60
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %arrayidx35.u2_30fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 %i.0, !taffo.info !37
  %arrayidx36.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx35.u2_30fixp, i32 0, i32 %j.0, !taffo.info !37
  %u2_30fixp3 = load i32, i32* %arrayidx36.u2_30fixp, align 4, !taffo.info !37
  %4 = uitofp i32 %u2_30fixp3 to float, !taffo.info !37
  %lampsim12 = bitcast float %4 to i32
  %lampsim13 = and i32 %lampsim12, -8192
  %lampsim14 = bitcast i32 %lampsim13 to float
  %5 = fdiv float %lampsim14, 0x41D0000000000000, !taffo.info !37
  %lampsim15 = bitcast float %5 to i32
  %lampsim16 = and i32 %lampsim15, -8192
  %lampsim17 = bitcast i32 %lampsim16 to float
  %arrayidx37 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.0, !taffo.info !4
  store float %lampsim17, float* %arrayidx38, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %inc = add nsw i32 %j.0, 1, !taffo.info !67, !taffo.constinfo !25
  br label %for.cond32, !llvm.loop !69

for.end:                                          ; preds = %for.cond32
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %inc40 = add nsw i32 %i.0, 1, !taffo.info !70, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !72

for.end41:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @w_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0), [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !73
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %w, float* noundef %x, [20 x float]* noundef %A) #0 !taffo.initweight !74 !taffo.funinfo !75 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !80
  %add = add nsw i32 %mul, %j.0, !taffo.info !80
  %rem = srem i32 %add, 20, !taffo.info !80, !taffo.constinfo !25
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !78
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !82
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv1 = fpext float %2 to double, !taffo.info !4
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -4398046511104
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !83
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !84

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !85

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc24, %for.inc23 ], !taffo.info !60
  %cmp11 = icmp slt i32 %i.1, %n, !taffo.info !78
  br i1 %cmp11, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond10
  %rem14 = srem i32 %i.1, 20, !taffo.info !80, !taffo.constinfo !25
  %cmp15 = icmp eq i32 %rem14, 0, !taffo.info !78
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !82
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx20 = getelementptr inbounds float, float* %x, i32 %i.1, !taffo.info !0
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !0
  %conv214 = fpext float %5 to double, !taffo.info !0
  %lampsim5 = bitcast double %conv214 to i64
  %lampsim6 = and i64 %lampsim5, -4398046511104
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !83
  br label %for.inc23

for.inc23:                                        ; preds = %if.end19
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond10, !llvm.loop !86

for.end25:                                        ; preds = %for.cond10
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end25
  %i.2 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !60
  %cmp27 = icmp slt i32 %i.2, %n, !taffo.info !78
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %rem30 = srem i32 %i.2, 20, !taffo.info !80, !taffo.constinfo !25
  %cmp31 = icmp eq i32 %rem30, 0, !taffo.info !78
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body29
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !taffo.constinfo !82
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body29
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx36 = getelementptr inbounds float, float* %w, i32 %i.2, !taffo.info !2
  %8 = load float, float* %arrayidx36, align 4, !taffo.info !2
  %conv378 = fpext float %8 to double, !taffo.info !2
  %lampsim9 = bitcast double %conv378 to i64
  %lampsim10 = and i64 %lampsim9, -4398046511104
  %lampsim11 = bitcast i64 %lampsim10 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), double noundef %lampsim11), !taffo.constinfo !83
  br label %for.inc39

for.inc39:                                        ; preds = %if.end35
  %inc40 = add nsw i32 %i.2, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond26, !llvm.loop !87

for.end41:                                        ; preds = %for.cond26
  ret void
}

declare !taffo.initweight !29 !taffo.funinfo !30 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver.1_fixp(i32 noundef %n, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %u1.u1_31fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u1_31fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u5_27fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !37
  %arrayidx4.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !37
  %u2_30fixp8 = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !37
  %arrayidx5.u1_31fixp = getelementptr inbounds i32, i32* %u1.u1_31fixp, i32 %i.0, !taffo.info !38
  %u1_31fixp = load i32, i32* %arrayidx5.u1_31fixp, align 4, !taffo.info !38
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %j.0, !taffo.info !41
  %u1_31fixp1 = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !41
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !38
  %1 = lshr i32 %u1_31fixp1, 1, !taffo.info !41
  %2 = ashr i32 %0, 1, !taffo.info !38
  %3 = ashr i32 %1, 1, !taffo.info !41
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 29), !taffo.info !91
  %mul.u2_30fixp = shl i32 %4, 1, !taffo.info !94
  %add.u2_30fixp = add i32 %u2_30fixp8, %mul.u2_30fixp, !taffo.info !95
  %arrayidx7.u1_31fixp = getelementptr inbounds i32, i32* %u2.u1_31fixp, i32 %i.0, !taffo.info !43
  %u1_31fixp2 = load i32, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !43
  %arrayidx8.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %j.0, !taffo.info !45
  %u1_31fixp3 = load i32, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !45
  %5 = lshr i32 %u1_31fixp2, 1, !taffo.info !43
  %6 = lshr i32 %u1_31fixp3, 1, !taffo.info !45
  %7 = ashr i32 %5, 1, !taffo.info !43
  %8 = ashr i32 %6, 1, !taffo.info !45
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 29), !taffo.info !97
  %mul9.u2_30fixp = shl i32 %9, 1, !taffo.info !99
  %add10.u2_30fixp = add i32 %add.u2_30fixp, %mul9.u2_30fixp, !taffo.info !100
  %arrayidx11.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !37
  %arrayidx12.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u2_30fixp, i32 0, i32 %j.0, !taffo.info !37
  store i32 %add10.u2_30fixp, i32* %arrayidx12.u2_30fixp, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond1, !llvm.loop !102

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !103

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ], !taffo.info !60
  %cmp17 = icmp slt i32 %i.1, %n, !taffo.info !78
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ], !taffo.info !60
  %cmp20 = icmp slt i32 %j.1, %n, !taffo.info !78
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %arrayidx22.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.1, !taffo.info !50
  %u2_30fixp = load i32, i32* %arrayidx22.u2_30fixp, align 4, !taffo.info !50
  %arrayidx23.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %j.1, !taffo.info !37
  %arrayidx24.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u2_30fixp, i32 0, i32 %i.1, !taffo.info !37
  %u2_30fixp9 = load i32, i32* %arrayidx24.u2_30fixp, align 4, !taffo.info !37
  %10 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !35
  %11 = lshr i32 %u2_30fixp9, 1, !taffo.info !37
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 29), !taffo.info !104
  %mul25.u2_30fixp = shl i32 %12, 1, !taffo.info !106
  %arrayidx26.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %j.1, !taffo.info !51
  %u1_31fixp6 = load i32, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !51
  %13 = lshr i32 %mul25.u2_30fixp, 1, !taffo.info !106
  %14 = lshr i32 %u1_31fixp6, 1, !taffo.info !51
  %15 = ashr i32 %14, 1, !taffo.info !51
  %16 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %15, i32 29), !taffo.info !107
  %mul27.u2_30fixp = shl i32 %16, 1, !taffo.info !109
  %add28.u2_30fixp = add i32 %u2_30fixp, %mul27.u2_30fixp, !taffo.info !110
  %arrayidx29.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.1, !taffo.info !50
  store i32 %add28.u2_30fixp, i32* %arrayidx29.u2_30fixp, align 4, !taffo.info !62
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond19, !llvm.loop !112

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond16, !llvm.loop !113

for.end35:                                        ; preds = %for.cond16
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !60
  %cmp37 = icmp slt i32 %i.2, %n, !taffo.info !78
  br i1 %cmp37, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond36
  %arrayidx39.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.2, !taffo.info !50
  %u2_30fixp4 = load i32, i32* %arrayidx39.u2_30fixp, align 4, !taffo.info !50
  %arrayidx40.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.2, !taffo.info !53
  %u1_31fixp7 = load i32, i32* %arrayidx40.u1_31fixp, align 4, !taffo.info !114
  %17 = lshr i32 %u1_31fixp7, 1, !taffo.info !114
  %add41.u2_30fixp = add i32 %u2_30fixp4, %17, !taffo.info !115
  %arrayidx42.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.2, !taffo.info !50
  store i32 %add41.u2_30fixp, i32* %arrayidx42.u2_30fixp, align 4, !taffo.info !62
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %inc44 = add nsw i32 %i.2, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond36, !llvm.loop !117

for.end45:                                        ; preds = %for.cond36
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.end45
  %i.3 = phi i32 [ 0, %for.end45 ], [ %inc64, %for.inc63 ], !taffo.info !60
  %cmp47 = icmp slt i32 %i.3, %n, !taffo.info !78
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond46
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.body48
  %j.2 = phi i32 [ 0, %for.body48 ], [ %inc61, %for.inc60 ], !taffo.info !60
  %cmp50 = icmp slt i32 %j.2, %n, !taffo.info !78
  br i1 %cmp50, label %for.body51, label %for.end62

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u5_27fixp = getelementptr inbounds i32, i32* %w.u5_27fixp, i32 %i.3, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx52.u5_27fixp, align 4, !taffo.info !47
  %arrayidx53.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.3, !taffo.info !37
  %arrayidx54.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx53.u2_30fixp, i32 0, i32 %j.2, !taffo.info !37
  %u2_30fixp10 = load i32, i32* %arrayidx54.u2_30fixp, align 4, !taffo.info !37
  %18 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !32
  %19 = lshr i32 %u2_30fixp10, 1, !taffo.info !37
  %20 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %19, i32 29), !taffo.info !118
  %mul55.u2_30fixp = shl i32 %20, 1, !taffo.info !120
  %arrayidx56.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %j.2, !taffo.info !50
  %u2_30fixp5 = load i32, i32* %arrayidx56.u2_30fixp, align 4, !taffo.info !50
  %21 = lshr i32 %mul55.u2_30fixp, 1, !taffo.info !120
  %22 = lshr i32 %u2_30fixp5, 1, !taffo.info !50
  %23 = call i32 @llvm.smul.fix.i32(i32 %21, i32 %22, i32 29), !taffo.info !121
  %mul57.u2_30fixp = shl i32 %23, 1, !taffo.info !123
  %24 = lshr i32 %mul57.u2_30fixp, 3, !taffo.info !123
  %add58.u5_27fixp = add i32 %u5_27fixp, %24, !taffo.info !124
  %arrayidx59.u5_27fixp = getelementptr inbounds i32, i32* %w.u5_27fixp, i32 %i.3, !taffo.info !47
  store i32 %add58.u5_27fixp, i32* %arrayidx59.u5_27fixp, align 4, !taffo.info !63
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51
  %inc61 = add nsw i32 %j.2, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond49, !llvm.loop !126

for.end62:                                        ; preds = %for.cond49
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %inc64 = add nsw i32 %i.3, 1, !taffo.info !78, !taffo.constinfo !25
  br label %for.cond46, !llvm.loop !127

for.end65:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %u1.u1_31fixp, i32* noundef %v1.u1_31fixp, i32* noundef %u2.u1_31fixp, i32* noundef %v2.u1_31fixp, i32* noundef %w.u5_27fixp, i32* noundef %x.u2_30fixp, i32* noundef %y.u1_31fixp, i32* noundef %z.u1_31fixp) #0 !taffo.initweight !128 !taffo.funinfo !89 !taffo.sourceFunction !129 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !55, !taffo.constinfo !130
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !132, !taffo.constinfo !133
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !136
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.inc51 ], !taffo.info !137, !taffo.initweight !139
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp, label %for.body, label %for.end53, !taffo.info !137, !taffo.initweight !142

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !143
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !143
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !144
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !146
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %u1.u1_31fixp, i32 %i.0, !taffo.info !147
  store i32 %div.u1_31fixp, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !148
  %add = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !150, !taffo.constinfo !25
  %3 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !150, !taffo.constinfo !25
  %4 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %5 = call i32 @llvm.sdiv.fix.i32(i32 %3, i32 %4, i32 26), !taffo.info !151
  %div7.u2_30fixp = shl i32 %5, 4, !taffo.info !153
  %6 = lshr i32 %div7.u2_30fixp, 1, !taffo.info !153
  %7 = shl i32 2, 29
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %7, i32 29), !taffo.info !154
  %div9.u2_30fixp = shl i32 %8, 1, !taffo.info !156, !taffo.constinfo !157
  %conv10.u1_31fixp = shl i32 %div9.u2_30fixp, 1, !taffo.info !158, !taffo.constinfo !157
  %arrayidx11.u1_31fixp = getelementptr inbounds i32, i32* %u2.u1_31fixp, i32 %i.0, !taffo.info !160
  store i32 %conv10.u1_31fixp, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !148
  %add12 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  %conv13.u5_27fixp = shl i32 %add12, 27, !taffo.info !150, !taffo.constinfo !25
  %9 = lshr i32 %conv13.u5_27fixp, 1, !taffo.info !150, !taffo.constinfo !25
  %10 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 26), !taffo.info !151
  %div14.u2_30fixp = shl i32 %11, 4, !taffo.info !153
  %12 = lshr i32 %div14.u2_30fixp, 1, !taffo.info !153
  %13 = shl i32 4, 28
  %14 = ashr i32 %12, 1, !taffo.info !153
  %15 = call i32 @llvm.sdiv.fix.i32(i32 %14, i32 %13, i32 28), !taffo.info !161
  %div16.u2_30fixp = shl i32 %15, 2, !taffo.info !164, !taffo.constinfo !165
  %conv17.u1_31fixp = shl i32 %div16.u2_30fixp, 1, !taffo.info !168, !taffo.constinfo !165
  %arrayidx18.u1_31fixp = getelementptr inbounds i32, i32* %v1.u1_31fixp, i32 %i.0, !taffo.info !170
  store i32 %conv17.u1_31fixp, i32* %arrayidx18.u1_31fixp, align 4, !taffo.info !148
  %add19 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  %conv20.u5_27fixp = shl i32 %add19, 27, !taffo.info !150, !taffo.constinfo !25
  %16 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !150, !taffo.constinfo !25
  %17 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %18 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %17, i32 26), !taffo.info !151
  %div21.u2_30fixp = shl i32 %18, 4, !taffo.info !153
  %19 = lshr i32 %div21.u2_30fixp, 1, !taffo.info !153
  %20 = shl i32 6, 28
  %21 = ashr i32 %19, 1, !taffo.info !153
  %22 = call i32 @llvm.sdiv.fix.i32(i32 %21, i32 %20, i32 28), !taffo.info !171
  %div23.u2_30fixp = shl i32 %22, 2, !taffo.info !173, !taffo.constinfo !174
  %conv24.u1_31fixp = shl i32 %div23.u2_30fixp, 1, !taffo.info !177, !taffo.constinfo !174
  %arrayidx25.u1_31fixp = getelementptr inbounds i32, i32* %v2.u1_31fixp, i32 %i.0, !taffo.info !179
  store i32 %conv24.u1_31fixp, i32* %arrayidx25.u1_31fixp, align 4, !taffo.info !148
  %add26 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  %conv27.u5_27fixp = shl i32 %add26, 27, !taffo.info !150, !taffo.constinfo !25
  %23 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !150, !taffo.constinfo !25
  %24 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %25 = call i32 @llvm.sdiv.fix.i32(i32 %23, i32 %24, i32 26), !taffo.info !151
  %div28.u2_30fixp = shl i32 %25, 4, !taffo.info !153
  %26 = lshr i32 %div28.u2_30fixp, 1, !taffo.info !153
  %27 = shl i32 8, 27
  %28 = ashr i32 %26, 2, !taffo.info !153
  %29 = call i32 @llvm.sdiv.fix.i32(i32 %28, i32 %27, i32 27), !taffo.info !180
  %div30.u2_30fixp = shl i32 %29, 3, !taffo.info !183, !taffo.constinfo !184
  %conv31.u1_31fixp = shl i32 %div30.u2_30fixp, 1, !taffo.info !187, !taffo.constinfo !184
  %arrayidx32.u1_31fixp = getelementptr inbounds i32, i32* %y.u1_31fixp, i32 %i.0, !taffo.info !189
  store i32 %conv31.u1_31fixp, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !148
  %add33 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  %conv34.u5_27fixp = shl i32 %add33, 27, !taffo.info !150, !taffo.constinfo !25
  %30 = lshr i32 %conv34.u5_27fixp, 1, !taffo.info !150, !taffo.constinfo !25
  %31 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !136
  %32 = call i32 @llvm.sdiv.fix.i32(i32 %30, i32 %31, i32 26), !taffo.info !151
  %div35.u2_30fixp = shl i32 %32, 4, !taffo.info !153
  %33 = lshr i32 %div35.u2_30fixp, 1, !taffo.info !153
  %34 = shl i32 9, 27
  %35 = ashr i32 %33, 2, !taffo.info !153
  %36 = call i32 @llvm.sdiv.fix.i32(i32 %35, i32 %34, i32 27), !taffo.info !190
  %div37.u2_30fixp = shl i32 %36, 3, !taffo.info !192, !taffo.constinfo !193
  %conv38.u1_31fixp = shl i32 %div37.u2_30fixp, 1, !taffo.info !196, !taffo.constinfo !193
  %arrayidx39.u1_31fixp = getelementptr inbounds i32, i32* %z.u1_31fixp, i32 %i.0, !taffo.info !198
  store i32 %conv38.u1_31fixp, i32* %arrayidx39.u1_31fixp, align 4, !taffo.info !148
  %arrayidx40.u2_30fixp = getelementptr inbounds i32, i32* %x.u2_30fixp, i32 %i.0, !taffo.info !199
  store i32 0, i32* %arrayidx40.u2_30fixp, align 4, !taffo.info !148, !taffo.constinfo !200
  %arrayidx41.u5_27fixp = getelementptr inbounds i32, i32* %w.u5_27fixp, i32 %i.0, !taffo.info !201
  store i32 0, i32* %arrayidx41.u5_27fixp, align 4, !taffo.info !148, !taffo.constinfo !200
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !137, !taffo.initweight !139
  %cmp43 = icmp slt i32 %j.0, %n, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp43, label %for.body45, label %for.end, !taffo.info !137, !taffo.initweight !142

for.body45:                                       ; preds = %for.cond42
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !202, !taffo.initweight !141
  %rem = srem i32 %mul, %n, !taffo.info !204, !taffo.initweight !142
  %conv46.u5_27fixp = shl i32 %rem, 27, !taffo.info !206
  %conv47.u5_27fixp = shl i32 %n, 27, !taffo.info !136
  %37 = lshr i32 %conv46.u5_27fixp, 1, !taffo.info !206
  %38 = lshr i32 %conv47.u5_27fixp, 1, !taffo.info !136
  %39 = call i32 @llvm.sdiv.fix.i32(i32 %37, i32 %38, i32 26), !taffo.info !207
  %div48.u1_31fixp = shl i32 %39, 5, !taffo.info !38
  %arrayidx49.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !208
  %arrayidx50.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx49.u2_30fixp, i32 0, i32 %j.0, !taffo.info !208
  %40 = lshr i32 %div48.u1_31fixp, 1, !taffo.info !38
  store i32 %40, i32* %arrayidx50.u2_30fixp, align 4, !taffo.info !148
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %inc = add nsw i32 %j.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  br label %for.cond42, !llvm.loop !209

for.end:                                          ; preds = %for.cond42
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %inc52 = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !141, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !210

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x3FF21F5BE5D9E40D}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x4032341E9AF5BA2C}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x3FF1D9999999999A}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"NumRegisterParameters", i32 0}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i1 false, !20}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 1.000000e+01, double 1.000000e+01}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 2.000000e+00, double 2.000000e+00}
!25 = !{i1 false, i1 false}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{}
!29 = !{i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false}
!31 = !{i1 true}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 32, i32 30}
!34 = !{double 1.500000e+00, double 1.500000e+00}
!35 = !{!33, !36, i1 false, i2 -1}
!36 = !{double 1.200000e+00, double 1.200000e+00}
!37 = !{!33, !5, i1 false, i2 -1}
!38 = !{!39, !40, i1 false, i2 -1}
!39 = !{!"fixp", i32 32, i32 31}
!40 = !{double 0.000000e+00, double 0x3FEE666666666666}
!41 = !{!39, !42, i1 false, i2 -1}
!42 = !{double 1.250000e-02, double 2.500000e-01}
!43 = !{!39, !44, i1 false, i2 -1}
!44 = !{double 2.500000e-02, double 5.000000e-01}
!45 = !{!39, !46, i1 false, i2 -1}
!46 = !{double 8.333000e-03, double 1.666670e-01}
!47 = !{!48, !3, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 27}
!49 = !{!"w"}
!50 = !{!33, !1, i1 false, i2 -1}
!51 = !{!39, !52, i1 false, i2 -1}
!52 = !{double 6.250000e-03, double 1.250000e-01}
!53 = !{!39, !54, i1 false, i2 -1}
!54 = !{double 5.556000e-03, double 1.111110e-01}
!55 = !{i1 false, !34, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 2.100000e+01}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !1, i1 false, i2 -1}
!63 = !{i1 false, !3, i1 false, i2 -1}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 4.410000e+02}
!66 = !{i1 false, !5, i1 false, i2 -1}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 4.410000e+02}
!69 = distinct !{!69, !27}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 2.100000e+01}
!72 = distinct !{!72, !27}
!73 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!74 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!75 = !{i32 1, !76, i32 1, !2, i32 1, !0, i32 1, !4}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 2.000000e+01, double 2.000000e+01}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 0.000000e+00}
!82 = !{i1 false, i1 false, i1 false}
!83 = !{i1 false, i1 false, i1 false, i1 false}
!84 = distinct !{!84, !27}
!85 = distinct !{!85, !27}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !27}
!88 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!89 = !{i32 1, !76, i32 1, !32, i32 1, !35, i32 1, !37, i32 1, !38, i32 1, !41, i32 1, !43, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !51, i32 1, !53}
!90 = distinct !{null}
!91 = !{!92, !93, i1 false, i2 -1}
!92 = !{!"fixp", i32 -32, i32 29}
!93 = !{double 0.000000e+00, double 2.375000e-01}
!94 = !{!33, !93, i1 false, i2 -1}
!95 = !{!33, !96, i1 false, i2 -1}
!96 = !{double 0.000000e+00, double 0x3FF5A66666666667}
!97 = !{!92, !98, i1 false, i2 -1}
!98 = !{double 2.083250e-04, double 8.333350e-02}
!99 = !{!33, !98, i1 false, i2 -1}
!100 = !{!33, !101, i1 false, i2 -1}
!101 = !{double 2.083250e-04, double 0x3FF6FBBBE878FABE}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = !{!92, !105, i1 false, i2 -1}
!105 = !{double 0.000000e+00, double 1.338750e+00}
!106 = !{!33, !105, i1 false, i2 -1}
!107 = !{!92, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 0x3FC56B851EB851EC}
!109 = !{!33, !108, i1 false, i2 -1}
!110 = !{!33, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x3FF4CCCC89B0EE4A}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = !{!33, !54, i1 false, i2 -1}
!115 = !{!33, !116, i1 false, i2 -1}
!116 = !{double 5.556000e-03, double 0x3FF3E67839CD8128}
!117 = distinct !{!117, !27}
!118 = !{!92, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x3FFAC66666666667}
!120 = !{!33, !119, i1 false, i2 -1}
!121 = !{!92, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x3FFE53AD62A43A08}
!123 = !{!33, !122, i1 false, i2 -1}
!124 = !{!48, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x40341959711FFDCC}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!129 = distinct !{null}
!130 = !{!131, i1 false}
!131 = !{i1 false, !34, i1 false, i2 0}
!132 = !{i1 false, !36, i1 false, i2 -1}
!133 = !{!134, i1 false}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!136 = !{!48, !77, i1 false, i2 1}
!137 = !{i1 false, !138, i1 false, i2 -1}
!138 = !{double 0.000000e+00, double 2.000000e+01}
!139 = !{i32 0}
!140 = !{i1 false, !61, i1 false, i2 -1}
!141 = !{i32 2}
!142 = !{i32 3}
!143 = !{!48, !138, i1 false, i2 -1}
!144 = !{!145, !61, i1 false, i2 1}
!145 = !{!"fixp", i32 -32, i32 26}
!146 = !{!39, !61, i1 false, i2 1}
!147 = !{!39, !40, i1 false, i2 1}
!148 = !{i1 false, i1 false, i1 false, i2 1}
!149 = !{i1 false, !71, i1 false, i2 -1}
!150 = !{!48, !71, i1 false, i2 -1}
!151 = !{!145, !152, i1 false, i2 1}
!152 = !{double 5.000000e-02, double 1.050000e+00}
!153 = !{!33, !152, i1 false, i2 1}
!154 = !{!92, !155, i1 false, i2 1}
!155 = !{double 2.500000e-02, double 5.250000e-01}
!156 = !{!33, !155, i1 false, i2 1}
!157 = !{i1 false, !23}
!158 = !{!39, !159, i1 false, i2 1}
!159 = !{double 0x3F99999980000000, double 0x3FE0CCCCE0000000}
!160 = !{!39, !44, i1 false, i2 1}
!161 = !{!162, !163, i1 false, i2 1}
!162 = !{!"fixp", i32 -32, i32 28}
!163 = !{double 1.250000e-02, double 2.625000e-01}
!164 = !{!33, !163, i1 false, i2 1}
!165 = !{i1 false, !166}
!166 = !{i1 false, !167, i1 false, i2 0}
!167 = !{double 4.000000e+00, double 4.000000e+00}
!168 = !{!39, !169, i1 false, i2 1}
!169 = !{double 0x3F89999980000000, double 0x3FD0CCCCE0000000}
!170 = !{!39, !42, i1 false, i2 1}
!171 = !{!162, !172, i1 false, i2 1}
!172 = !{double 0x3F81111111111111, double 0x3FC6666666666667}
!173 = !{!33, !172, i1 false, i2 1}
!174 = !{i1 false, !175}
!175 = !{i1 false, !176, i1 false, i2 0}
!176 = !{double 6.000000e+00, double 6.000000e+00}
!177 = !{!39, !178, i1 false, i2 1}
!178 = !{double 0x3F81111100000000, double 0x3FC6666680000000}
!179 = !{!39, !46, i1 false, i2 1}
!180 = !{!181, !182, i1 false, i2 1}
!181 = !{!"fixp", i32 -32, i32 27}
!182 = !{double 6.250000e-03, double 1.312500e-01}
!183 = !{!33, !182, i1 false, i2 1}
!184 = !{i1 false, !185}
!185 = !{i1 false, !186, i1 false, i2 0}
!186 = !{double 8.000000e+00, double 8.000000e+00}
!187 = !{!39, !188, i1 false, i2 1}
!188 = !{double 0x3F79999980000000, double 0x3FC0CCCCE0000000}
!189 = !{!39, !52, i1 false, i2 1}
!190 = !{!181, !191, i1 false, i2 1}
!191 = !{double 0x3F76C16C16C16C17, double 0x3FBDDDDDDDDDDDDE}
!192 = !{!33, !191, i1 false, i2 1}
!193 = !{i1 false, !194}
!194 = !{i1 false, !195, i1 false, i2 0}
!195 = !{double 9.000000e+00, double 9.000000e+00}
!196 = !{!39, !197, i1 false, i2 1}
!197 = !{double 0x3F76C16C00000000, double 0x3FBDDDDDE0000000}
!198 = !{!39, !54, i1 false, i2 1}
!199 = !{!33, !1, i1 false, i2 1}
!200 = !{!80, i1 false}
!201 = !{!48, !3, i1 false, i2 1}
!202 = !{i1 false, !203, i1 false, i2 -1}
!203 = !{double 0.000000e+00, double 4.000000e+02}
!204 = !{i1 false, !205, i1 false, i2 -1}
!205 = !{double 0.000000e+00, double 1.900000e+01}
!206 = !{!48, !205, i1 false, i2 -1}
!207 = !{!145, !40, i1 false, i2 -1}
!208 = !{!33, !5, i1 false, i2 1}
!209 = distinct !{!209, !27}
!210 = distinct !{!210, !27}
