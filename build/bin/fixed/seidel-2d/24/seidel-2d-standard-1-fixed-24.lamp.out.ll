; ModuleID = './build/bin/fixed/seidel-2d/24/seidel-2d-standard-1-fixed-24.out.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -1
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
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -1
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
  %A.u5_27fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !28, !taffo.target !31
  %arraydecay.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  call void @init_array.2_fixp(i32 20, [20 x i32]* %arraydecay.u5_27fixp), !taffo.info !32, !taffo.constinfo !33, !taffo.target !31
  call void @timer_start(), !taffo.constinfo !34
  %arraydecay2.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  call void @kernel_seidel_2d.1_fixp(i32 10, i32 20, [20 x i32]* %arraydecay2.u5_27fixp), !taffo.info !32, !taffo.constinfo !35, !taffo.target !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !36
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !38
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !40
  %cmp4 = icmp slt i32 %j.0, 20, !taffo.info !38
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %arrayidx.u5_27fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 %i.0, !taffo.info !28, !taffo.target !31
  %arrayidx6.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28, !taffo.target !31
  %u5_27fixp = load i32, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !28, !taffo.target !31
  %0 = uitofp i32 %u5_27fixp to float, !taffo.info !28, !taffo.target !31
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41A0000000000000, !taffo.info !28, !taffo.target !31
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx8, align 4, !taffo.info !32, !taffo.target !31
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !42, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !44

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !45, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !47

for.end11:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !33
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !48 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !38
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !38
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !51
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !53
  %add = add nsw i32 %mul, %j.0, !taffo.info !53
  %rem = srem i32 %add, 20, !taffo.info !53, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !51
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !33
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !35
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !51, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !55

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !56

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1_fixp(i32 noundef %tsteps, i32 noundef %n, [20 x i32]* noundef %A.u5_27fixp) #0 !taffo.initweight !57 !taffo.funinfo !58 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !38
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !60, !taffo.constinfo !21
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !62
  %sub2 = sub nsw i32 %n, 2, !taffo.info !64, !taffo.constinfo !21
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !51
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !62
  %sub6 = sub nsw i32 %n, 2, !taffo.info !64, !taffo.constinfo !21
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !51
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %sub10, !taffo.info !28
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx12.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %sub11, !taffo.info !28
  %u5_27fixp = load i32, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !66
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx14.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %sub13, !taffo.info !28
  %arrayidx15.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp1 = load i32, i32* %arrayidx15.u5_27fixp, align 4, !taffo.info !66
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !66
  %1 = lshr i32 %u5_27fixp1, 1, !taffo.info !66
  %add.u6_26fixp = add i32 %0, %1, !taffo.info !68
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx17.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %sub16, !taffo.info !28
  %add18 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx19.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx17.u5_27fixp, i32 0, i32 %add18, !taffo.info !28
  %u5_27fixp2 = load i32, i32* %arrayidx19.u5_27fixp, align 4, !taffo.info !66
  %2 = lshr i32 %add.u6_26fixp, 1, !taffo.info !68
  %3 = lshr i32 %u5_27fixp2, 2, !taffo.info !66
  %add20.u7_25fixp = add i32 %2, %3, !taffo.info !70
  %arrayidx21.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx23.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx21.u5_27fixp, i32 0, i32 %sub22, !taffo.info !28
  %u5_27fixp3 = load i32, i32* %arrayidx23.u5_27fixp, align 4, !taffo.info !73
  %4 = lshr i32 %add20.u7_25fixp, 1, !taffo.info !70
  %5 = lshr i32 %u5_27fixp3, 3, !taffo.info !73
  %add24.u8_24fixp = add i32 %4, %5, !taffo.info !74
  %arrayidx26.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx27.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx26.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp4 = load i32, i32* %arrayidx27.u5_27fixp, align 4, !taffo.info !66
  %arrayidx28.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %add29 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx30.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u5_27fixp, i32 0, i32 %add29, !taffo.info !28
  %u5_27fixp5 = load i32, i32* %arrayidx30.u5_27fixp, align 4, !taffo.info !66
  %6 = lshr i32 %u5_27fixp4, 1, !taffo.info !66
  %7 = lshr i32 %u5_27fixp5, 1, !taffo.info !66
  %add31.u6_26fixp = add i32 %6, %7, !taffo.info !68
  %add32 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx33.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %add32, !taffo.info !28
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  %arrayidx35.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx33.u5_27fixp, i32 0, i32 %sub34, !taffo.info !28
  %u5_27fixp6 = load i32, i32* %arrayidx35.u5_27fixp, align 4, !taffo.info !66
  %8 = lshr i32 %add31.u6_26fixp, 1, !taffo.info !68
  %9 = lshr i32 %u5_27fixp6, 2, !taffo.info !66
  %add36.u7_25fixp = add i32 %8, %9, !taffo.info !70
  %add37 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx38.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %add37, !taffo.info !28
  %arrayidx39.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx38.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  %u5_27fixp7 = load i32, i32* %arrayidx39.u5_27fixp, align 4, !taffo.info !73
  %10 = lshr i32 %u5_27fixp7, 2, !taffo.info !73
  %add40.u7_25fixp = add i32 %add36.u7_25fixp, %10, !taffo.info !77
  %add41 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx42.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %add41, !taffo.info !28
  %add43 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx44.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx42.u5_27fixp, i32 0, i32 %add43, !taffo.info !28
  %u5_27fixp8 = load i32, i32* %arrayidx44.u5_27fixp, align 4, !taffo.info !73
  %11 = lshr i32 %add40.u7_25fixp, 1, !taffo.info !77
  %12 = lshr i32 %u5_27fixp8, 3, !taffo.info !73
  %add45.u8_24fixp = add i32 %11, %12, !taffo.info !78
  %add47.u8_24fixp = add i32 %add24.u8_24fixp, %add45.u8_24fixp, !taffo.info !80
  %13 = lshr i32 %add47.u8_24fixp, 1, !taffo.info !80
  %14 = shl i32 9, 27
  %15 = ashr i32 %14, 4
  %16 = call i32 @llvm.sdiv.fix.i32(i32 %13, i32 %15, i32 23), !taffo.info !82
  %div49.u5_27fixp = shl i32 %16, 4, !taffo.info !84, !taffo.constinfo !85
  %arrayidx50.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !28
  %arrayidx51.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx50.u5_27fixp, i32 0, i32 %j.0, !taffo.info !28
  store i32 %div49.u5_27fixp, i32* %arrayidx51.u5_27fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !87

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !88

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !89

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [20 x i32]* noundef %A.u5_27fixp) #0 !taffo.initweight !90 !taffo.funinfo !91 !taffo.sourceFunction !92 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !93, !taffo.initweight !95
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !96, !taffo.initweight !97
  br i1 %cmp, label %for.body, label %for.end12, !taffo.info !93, !taffo.initweight !98

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !93, !taffo.initweight !95
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !96, !taffo.initweight !97
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !93, !taffo.initweight !98

for.body5:                                        ; preds = %for.cond3
  %conv.s6_26fixp = shl i32 %i.0, 26, !taffo.info !99
  %add = add nsw i32 %j.0, 2, !taffo.info !101, !taffo.initweight !97, !taffo.constinfo !21
  %conv6.s6_26fixp = shl i32 %add, 26, !taffo.info !103, !taffo.constinfo !21
  %0 = ashr i32 %conv.s6_26fixp, 4, !taffo.info !99
  %1 = ashr i32 %conv6.s6_26fixp, 4, !taffo.info !103, !taffo.constinfo !21
  %mul.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 22), !taffo.info !104
  %2 = lshr i32 -2147483648, 8
  %add7.s10_22fixp = add i32 %mul.s10_22fixp, %2, !taffo.info !107, !taffo.constinfo !109
  %conv8.s6_26fixp = shl i32 %n, 26, !taffo.info !110
  %3 = ashr i32 %conv8.s6_26fixp, 4, !taffo.info !110
  %4 = call i32 @llvm.sdiv.fix.i32(i32 %add7.s10_22fixp, i32 %3, i32 22), !taffo.info !111
  %div.s6_26fixp = shl i32 %4, 4, !taffo.info !113
  %arrayidx.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !84
  %arrayidx9.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !84
  %5 = shl i32 %div.s6_26fixp, 1, !taffo.info !113
  store i32 %5, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !86
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !114, !taffo.initweight !97, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !116

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !114, !taffo.initweight !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !117

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40340CCCBC05D52C}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{double 1.000000e-01, double 0x40340CCCBC05D52C}
!31 = !{!"A"}
!32 = !{i1 false, !30, i1 false, i2 -1}
!33 = !{i1 false, i1 false, i1 false}
!34 = !{i1 false}
!35 = !{i1 false, i1 false, i1 false, i1 false}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0.000000e+00, double 2.100000e+01}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 1.000000e+00}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 4.410000e+02}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 1.000000e+00, double 4.410000e+02}
!44 = distinct !{!44, !23}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 1.000000e+00, double 2.100000e+01}
!47 = distinct !{!47, !23}
!48 = !{i32 1, !49, i32 1, !0}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 2.000000e+01, double 2.000000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 1.000000e+00, double 1.000000e+00}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 0.000000e+00}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = !{i32 -1, i32 -1, i32 2}
!58 = !{i32 1, !16, i32 1, !49, i32 1, !28}
!59 = distinct !{null}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 9.000000e+00, double 9.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 2.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.800000e+01, double 1.800000e+01}
!66 = !{!67, !30, i1 false, i2 -1}
!67 = !{!"fixp", i32 32, i32 26}
!68 = !{!67, !69, i1 false, i2 -1}
!69 = !{double 2.000000e-01, double 0x40440CCCBC05D52C}
!70 = !{!71, !72, i1 false, i2 -1}
!71 = !{!"fixp", i32 32, i32 25}
!72 = !{double 0x3FD3333333333334, double 0x404E13331A08BFC2}
!73 = !{!71, !30, i1 false, i2 -1}
!74 = !{!75, !76, i1 false, i2 1}
!75 = !{!"fixp", i32 32, i32 24}
!76 = !{double 4.000000e-01, double 0x40540CCCBC05D52C}
!77 = !{!71, !76, i1 false, i2 -1}
!78 = !{!75, !79, i1 false, i2 1}
!79 = !{double 5.000000e-01, double 0x40590FFFEB074A77}
!80 = !{!75, !81, i1 false, i2 1}
!81 = !{double 9.000000e-01, double 0x40668E6653868FD2}
!82 = !{!83, !30, i1 false, i2 1}
!83 = !{!"fixp", i32 -32, i32 23}
!84 = !{!29, !30, i1 false, i2 1}
!85 = !{i1 false, !60}
!86 = !{i1 false, i1 false, i1 false, i2 1}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = !{i32 -1, i32 2}
!91 = !{i32 1, !49, i32 1, !28}
!92 = distinct !{null}
!93 = !{i1 false, !94, i1 false, i2 -1}
!94 = !{double -2.000000e+01, double 2.000000e+01}
!95 = !{i32 0}
!96 = !{i1 false, !39, i1 false, i2 -1}
!97 = !{i32 2}
!98 = !{i32 3}
!99 = !{!100, !94, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 26}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double -1.800000e+01, double 2.200000e+01}
!103 = !{!100, !102, i1 false, i2 -1}
!104 = !{!105, !106, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 22}
!106 = !{double -4.400000e+02, double 4.400000e+02}
!107 = !{!105, !108, i1 false, i2 -1}
!108 = !{double -4.380000e+02, double 4.420000e+02}
!109 = !{i1 false, !19}
!110 = !{!100, !50, i1 false, i2 1}
!111 = !{!105, !112, i1 false, i2 -1}
!112 = !{double -2.190000e+01, double 2.210000e+01}
!113 = !{!100, !112, i1 false, i2 -1}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double -1.900000e+01, double 2.100000e+01}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
