; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-1-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u4_28fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !28
  %B.u4_28fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !31
  %b.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !33
  %x.s4_28fixp = alloca [20 x i32], align 4, !taffo.info !36, !taffo.target !38
  %y.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !39
  %arraydecay.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay6.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay7.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u3_29fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay8.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !38
  %arraydecay9.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u3_29fixp, i32 0, i32 0, !taffo.info !39
  call void @init_array.2_fixp(i32 20, [20 x i32]* %arraydecay.u4_28fixp, [20 x i32]* %arraydecay6.u4_28fixp, i32* %arraydecay7.u3_29fixp, i32* %arraydecay8.s4_28fixp, i32* %arraydecay9.u3_29fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_start(), !taffo.constinfo !43
  %arraydecay10.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay11.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u3_29fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay12.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !38
  %arraydecay13.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u3_29fixp, i32 0, i32 0, !taffo.info !39
  call void @kernel_ludcmp.1_fixp(i32 20, [20 x i32]* %arraydecay10.u4_28fixp, i32* %arraydecay11.u3_29fixp, i32* %arraydecay12.s4_28fixp, i32* %arraydecay13.u3_29fixp), !taffo.info !41, !taffo.constinfo !44
  call void @timer_stop(), !taffo.constinfo !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 %i.0, !taffo.info !36, !taffo.target !38
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !36, !taffo.target !38
  %0 = sitofp i32 %s4_28fixp to float, !taffo.info !36, !taffo.target !38
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !36, !taffo.target !38
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx14, align 4, !taffo.info !49, !taffo.target !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !50, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !25 !taffo.funinfo !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !59, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !57
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !53
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !61
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.1_fixp(i32 noundef %n, [20 x i32]* noundef %A.u4_28fixp, i32* noundef %b.u3_29fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u3_29fixp) #0 !taffo.initweight !63 !taffo.funinfo !64 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !47
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !59
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx5.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp = load i32, i32* %arrayidx5.u4_28fixp, align 4, !taffo.info !66
  %0 = lshr i32 %u4_28fixp, 6, !taffo.info !66
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !47
  %w.0.s10_22fixp = phi i32 [ %0, %for.body4 ], [ %sub.s10_22fixp, %for.inc ], !taffo.info !69
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !59
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx10.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx9.u4_28fixp, i32 0, i32 %k.0, !taffo.info !28
  %u4_28fixp9 = load i32, i32* %arrayidx10.u4_28fixp, align 4, !taffo.info !28
  %arrayidx11.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %k.0, !taffo.info !28
  %arrayidx12.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp10 = load i32, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !28
  %1 = lshr i32 %u4_28fixp9, 1, !taffo.info !28
  %2 = lshr i32 %u4_28fixp10, 1, !taffo.info !28
  %3 = ashr i32 %1, 3, !taffo.info !28
  %4 = ashr i32 %2, 3, !taffo.info !28
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 24), !taffo.info !71
  %mul.u7_25fixp = shl i32 %5, 1, !taffo.info !74
  %6 = lshr i32 %mul.u7_25fixp, 3, !taffo.info !74
  %sub.s10_22fixp = sub i32 %w.0.s10_22fixp, %6, !taffo.info !76
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !78

for.end:                                          ; preds = %for.cond6
  %arrayidx13.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %j.0, !taffo.info !28
  %arrayidx14.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp11 = load i32, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !28
  %7 = lshr i32 %u4_28fixp11, 1, !taffo.info !28
  %8 = ashr i32 %w.0.s10_22fixp, 2, !taffo.info !69
  %9 = ashr i32 %7, 7, !taffo.info !28
  %div.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 20), !taffo.info !79
  %arrayidx15.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx16.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx15.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %10 = shl i32 %div.s12_20fixp, 8, !taffo.info !79
  store i32 %10, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !82
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !83

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !47
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !57
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx24.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u4_28fixp, i32 0, i32 %j.1, !taffo.info !28
  %u4_28fixp12 = load i32, i32* %arrayidx24.u4_28fixp, align 4, !taffo.info !66
  %11 = lshr i32 %u4_28fixp12, 6, !taffo.info !66
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !47
  %w.1.s10_22fixp = phi i32 [ %11, %for.body22 ], [ %sub33.s10_22fixp, %for.inc34 ], !taffo.info !69
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !59
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx29.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u4_28fixp, i32 0, i32 %k.1, !taffo.info !28
  %u4_28fixp13 = load i32, i32* %arrayidx29.u4_28fixp, align 4, !taffo.info !28
  %arrayidx30.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %k.1, !taffo.info !28
  %arrayidx31.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30.u4_28fixp, i32 0, i32 %j.1, !taffo.info !28
  %u4_28fixp14 = load i32, i32* %arrayidx31.u4_28fixp, align 4, !taffo.info !28
  %12 = lshr i32 %u4_28fixp13, 1, !taffo.info !28
  %13 = lshr i32 %u4_28fixp14, 1, !taffo.info !28
  %14 = ashr i32 %12, 3, !taffo.info !28
  %15 = ashr i32 %13, 3, !taffo.info !28
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 24), !taffo.info !71
  %mul32.u7_25fixp = shl i32 %16, 1, !taffo.info !74
  %17 = lshr i32 %mul32.u7_25fixp, 3, !taffo.info !74
  %sub33.s10_22fixp = sub i32 %w.1.s10_22fixp, %17, !taffo.info !76
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond25, !llvm.loop !84

for.end36:                                        ; preds = %for.cond25
  %arrayidx37.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx38.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx37.u4_28fixp, i32 0, i32 %j.1, !taffo.info !28
  %18 = shl i32 %w.1.s10_22fixp, 6, !taffo.info !69
  store i32 %18, i32* %arrayidx38.u4_28fixp, align 4, !taffo.info !82
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !85

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !47
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !57
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48.u3_29fixp = getelementptr inbounds i32, i32* %b.u3_29fixp, i32 %i.1, !taffo.info !33
  %u3_29fixp = load i32, i32* %arrayidx48.u3_29fixp, align 4, !taffo.info !66
  %19 = lshr i32 %u3_29fixp, 6, !taffo.info !66
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !47
  %w.2.s9_23fixp = phi i32 [ %19, %for.body47 ], [ %sub56.s9_23fixp, %for.inc57 ], !taffo.info !66
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !59
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.1, !taffo.info !28
  %arrayidx53.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u4_28fixp, i32 0, i32 %j.2, !taffo.info !28
  %u4_28fixp15 = load i32, i32* %arrayidx53.u4_28fixp, align 4, !taffo.info !87
  %arrayidx54.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %j.2, !taffo.info !39
  %u3_29fixp7 = load i32, i32* %arrayidx54.u3_29fixp, align 4, !taffo.info !39
  %20 = lshr i32 %u4_28fixp15, 1, !taffo.info !87
  %21 = lshr i32 %u3_29fixp7, 1, !taffo.info !39
  %22 = ashr i32 %20, 2, !taffo.info !87
  %23 = ashr i32 %21, 3, !taffo.info !39
  %24 = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 25), !taffo.info !89
  %mul55.u6_26fixp = shl i32 %24, 1, !taffo.info !92
  %25 = lshr i32 %mul55.u6_26fixp, 3, !taffo.info !92
  %sub56.s9_23fixp = sub i32 %w.2.s9_23fixp, %25, !taffo.info !93
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond49, !llvm.loop !95

for.end59:                                        ; preds = %for.cond49
  %arrayidx60.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %i.1, !taffo.info !39
  %26 = shl i32 %w.2.s9_23fixp, 6, !taffo.info !66
  store i32 %26, i32* %arrayidx60.u3_29fixp, align 4, !taffo.info !82
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond45, !llvm.loop !96

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !99
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !57
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %i.2, !taffo.info !39
  %u3_29fixp8 = load i32, i32* %arrayidx68.u3_29fixp, align 4, !taffo.info !66
  %add = add nsw i32 %i.2, 1, !taffo.info !55, !taffo.constinfo !21
  %27 = lshr i32 %u3_29fixp8, 6, !taffo.info !66
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !101
  %w.3.s9_23fixp = phi i32 [ %27, %for.body67 ], [ %sub76.s9_23fixp, %for.inc77 ], !taffo.info !66
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !59
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.2, !taffo.info !28
  %arrayidx73.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u4_28fixp, i32 0, i32 %j.3, !taffo.info !28
  %u4_28fixp16 = load i32, i32* %arrayidx73.u4_28fixp, align 4, !taffo.info !28
  %arrayidx74.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %j.3, !taffo.info !36
  %s4_28fixp = load i32, i32* %arrayidx74.s4_28fixp, align 4, !taffo.info !36
  %28 = lshr i32 %u4_28fixp16, 1, !taffo.info !28
  %29 = ashr i32 %28, 4, !taffo.info !28
  %30 = ashr i32 %s4_28fixp, 5, !taffo.info !36
  %mul75.s9_23fixp = call i32 @llvm.smul.fix.i32(i32 %29, i32 %30, i32 23), !taffo.info !103
  %sub76.s9_23fixp = sub i32 %w.3.s9_23fixp, %mul75.s9_23fixp, !taffo.info !105
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !107, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !109

for.end79:                                        ; preds = %for.cond69
  %arrayidx80.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.2, !taffo.info !28
  %arrayidx81.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx80.u4_28fixp, i32 0, i32 %i.2, !taffo.info !28
  %u4_28fixp17 = load i32, i32* %arrayidx81.u4_28fixp, align 4, !taffo.info !28
  %31 = lshr i32 %u4_28fixp17, 1, !taffo.info !28
  %32 = ashr i32 %w.3.s9_23fixp, 3, !taffo.info !66
  %33 = ashr i32 %31, 7, !taffo.info !28
  %div82.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %32, i32 %33, i32 20), !taffo.info !79
  %arrayidx83.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.2, !taffo.info !36
  %34 = shl i32 %div82.s12_20fixp, 8, !taffo.info !79
  store i32 %34, i32* %arrayidx83.s4_28fixp, align 4, !taffo.info !82
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !110, !taffo.constinfo !21
  br label %for.cond65, !llvm.loop !112

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [20 x i32]* noundef %A.u4_28fixp, [20 x i32]* noundef %B.u4_28fixp, i32* noundef %b.u3_29fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u3_29fixp) #0 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !115 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !116
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !118, !taffo.initweight !119
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !120, !taffo.initweight !121
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !122, !taffo.initweight !124

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.0, !taffo.info !125
  store i32 0, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !126, !taffo.constinfo !127
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %y.u3_29fixp, i32 %i.0, !taffo.info !128
  store i32 0, i32* %arrayidx5.u3_29fixp, align 4, !taffo.info !126, !taffo.constinfo !127
  %add = add nsw i32 %i.0, 1, !taffo.info !129, !taffo.initweight !121, !taffo.constinfo !21
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !130, !taffo.constinfo !21
  %0 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !130, !taffo.constinfo !21
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !116
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !131
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !134
  %3 = lshr i32 %div.u2_30fixp, 1, !taffo.info !134
  %4 = shl i32 2, 29
  %5 = ashr i32 %3, 1, !taffo.info !134
  %6 = ashr i32 %4, 1
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 28), !taffo.info !136
  %div8.u3_29fixp = shl i32 %7, 1, !taffo.info !138, !taffo.constinfo !139
  %add9.u3_29fixp = add i32 %div8.u3_29fixp, -2147483648, !taffo.info !140, !taffo.constinfo !142
  %arrayidx11.u3_29fixp = getelementptr inbounds i32, i32* %b.u3_29fixp, i32 %i.0, !taffo.info !145
  store i32 %add9.u3_29fixp, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !126
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !129, !taffo.initweight !121, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.info !118, !taffo.initweight !119
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.info !120, !taffo.initweight !121
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.info !122, !taffo.initweight !124

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.info !118, !taffo.initweight !119
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.info !120, !taffo.initweight !121
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.info !122, !taffo.initweight !124

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.info !147, !taffo.initweight !121, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !149, !taffo.initweight !124
  %conv20.s6_26fixp = shl i32 %rem, 26, !taffo.info !151
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !116
  %8 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !116
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %conv20.s6_26fixp, i32 %8, i32 26), !taffo.info !152
  %div22.s2_30fixp = shl i32 %9, 4, !taffo.info !154
  %10 = lshr i32 -2147483648, 1
  %add23.s2_30fixp = add i32 %div22.s2_30fixp, %10, !taffo.info !156, !taffo.constinfo !158
  %arrayidx24.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.1, !taffo.info !159
  %arrayidx25.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx24.u4_28fixp, i32 0, i32 %j.0, !taffo.info !159
  %11 = ashr i32 %add23.s2_30fixp, 2, !taffo.info !156, !taffo.constinfo !158
  store i32 %11, i32* %arrayidx25.u4_28fixp, align 4, !taffo.info !126
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.info !129, !taffo.initweight !121, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !160

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.info !129, !taffo.initweight !121, !taffo.constinfo !21
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.info !161, !taffo.initweight !119
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.info !120, !taffo.initweight !121
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.info !122, !taffo.initweight !124

for.body33:                                       ; preds = %for.cond30
  %arrayidx34.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.1, !taffo.info !159
  %arrayidx35.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx34.u4_28fixp, i32 0, i32 %j.1, !taffo.info !159
  store i32 0, i32* %arrayidx35.u4_28fixp, align 4, !taffo.info !126, !taffo.constinfo !127
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !163, !taffo.initweight !121, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !165

for.end38:                                        ; preds = %for.cond30
  %arrayidx39.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.1, !taffo.info !159
  %arrayidx40.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx39.u4_28fixp, i32 0, i32 %i.1, !taffo.info !159
  store i32 268435456, i32* %arrayidx40.u4_28fixp, align 4, !taffo.info !126, !taffo.constinfo !166
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.info !129, !taffo.initweight !121, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !167

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !47
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !57
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !47
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !57
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u4_28fixp, i32 %r.0, !taffo.info !31
  %arrayidx53.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u4_28fixp, i32 0, i32 %s.0, !taffo.info !31
  store i32 0, i32* %arrayidx53.u4_28fixp, align 4, !taffo.info !126, !taffo.constinfo !127
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !168

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !169

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !47
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !57
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !47
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !57
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !47
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !57
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %r.1, !taffo.info !28
  %arrayidx73.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u4_28fixp, i32 0, i32 %t.0, !taffo.info !28
  %u4_28fixp = load i32, i32* %arrayidx73.u4_28fixp, align 4, !taffo.info !28
  %arrayidx74.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %s.1, !taffo.info !28
  %arrayidx75.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx74.u4_28fixp, i32 0, i32 %t.0, !taffo.info !28
  %u4_28fixp1 = load i32, i32* %arrayidx75.u4_28fixp, align 4, !taffo.info !28
  %12 = lshr i32 %u4_28fixp, 1, !taffo.info !28
  %13 = lshr i32 %u4_28fixp1, 1, !taffo.info !28
  %14 = ashr i32 %12, 3, !taffo.info !28
  %15 = ashr i32 %13, 3, !taffo.info !28
  %16 = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 24), !taffo.info !71
  %mul.u7_25fixp = shl i32 %16, 1, !taffo.info !74
  %arrayidx76.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u4_28fixp, i32 %r.1, !taffo.info !31
  %arrayidx77.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76.u4_28fixp, i32 0, i32 %s.1, !taffo.info !31
  %u4_28fixp2 = load i32, i32* %arrayidx77.u4_28fixp, align 4, !taffo.info !31
  %17 = lshr i32 %u4_28fixp2, 3, !taffo.info !31
  %add78.u7_25fixp = add i32 %17, %mul.u7_25fixp, !taffo.info !170
  %18 = shl i32 %add78.u7_25fixp, 3, !taffo.info !170
  store i32 %18, i32* %arrayidx77.u4_28fixp, align 4, !taffo.info !172
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !173

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond64, !llvm.loop !174

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !175

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !47
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !57
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !47
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !57
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u4_28fixp, i32 %r.2, !taffo.info !31
  %arrayidx97.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx96.u4_28fixp, i32 0, i32 %s.2, !taffo.info !31
  %u4_28fixp3 = load i32, i32* %arrayidx97.u4_28fixp, align 4, !taffo.info !31
  %arrayidx98.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %r.2, !taffo.info !28
  %arrayidx99.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx98.u4_28fixp, i32 0, i32 %s.2, !taffo.info !28
  store i32 %u4_28fixp3, i32* %arrayidx99.u4_28fixp, align 4, !taffo.info !41
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond92, !llvm.loop !176

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !57, !taffo.constinfo !21
  br label %for.cond88, !llvm.loop !177

for.end105:                                       ; preds = %for.cond88
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

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
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
!29 = !{!"fixp", i32 32, i32 28}
!30 = !{double 1.000000e-01, double 8.172500e+00}
!31 = !{!29, !32, i1 false, i2 -1}
!32 = !{double 1.000000e+00, double 8.172500e+00}
!33 = !{!34, !35, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 29}
!35 = !{double 4.025000e+00, double 4.500000e+00}
!36 = !{!37, !1, i1 false, i2 -1}
!37 = !{!"fixp", i32 -32, i32 28}
!38 = !{!"x"}
!39 = !{!34, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 4.025000e+00}
!41 = !{i1 false, !30, i1 false, i2 -1}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = !{i1 false}
!44 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 2.100000e+01}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !1, i1 false, i2 -1}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 1.000000e+00, double 2.100000e+01}
!52 = distinct !{!52, !23}
!53 = !{i1 false, i1 false, i1 false}
!54 = !{i32 1, !55, i32 1, !0}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 2.000000e+01, double 2.000000e+01}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 1.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 0.000000e+00}
!61 = !{i1 false, i1 false, i1 false, i1 false}
!62 = distinct !{!62, !23}
!63 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!64 = !{i32 1, !55, i32 1, !28, i32 1, !33, i32 1, !36, i32 1, !39}
!65 = distinct !{null}
!66 = !{!67, !68, i1 false, i2 -1}
!67 = !{!"fixp", i32 -32, i32 23}
!68 = !{double -2.000000e+02, double 2.000000e+02}
!69 = !{!70, !68, i1 false, i2 -1}
!70 = !{!"fixp", i32 -32, i32 22}
!71 = !{!72, !73, i1 false, i2 -1}
!72 = !{!"fixp", i32 -32, i32 24}
!73 = !{double 0x3F847AE147AE147C, double 0x4050B28B5DCC63F1}
!74 = !{!75, !73, i1 false, i2 -1}
!75 = !{!"fixp", i32 32, i32 25}
!76 = !{!70, !77, i1 false, i2 -1}
!77 = !{double 0xC070ACA2D77318FC, double 1.999900e+02}
!78 = distinct !{!78, !23}
!79 = !{!80, !81, i1 false, i2 -1}
!80 = !{!"fixp", i32 -32, i32 20}
!81 = !{double -2.000000e+03, double 2.000000e+03}
!82 = !{i1 false, !68, i1 false, i2 -1}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = !{!88, !30, i1 false, i2 -1}
!88 = !{!"fixp", i32 32, i32 26}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 25}
!91 = !{double 0.000000e+00, double 0x40407278D4FDF3B6}
!92 = !{!88, !91, i1 false, i2 -1}
!93 = !{!67, !94, i1 false, i2 -1}
!94 = !{double 0xC06D1C9E353F7CEE, double 2.000000e+02}
!95 = distinct !{!95, !23}
!96 = distinct !{!96, !23}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.900000e+01, double 1.900000e+01}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.800000e+01, double 1.900000e+01}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 2.000000e+01, double 2.100000e+01}
!103 = !{!67, !104, i1 false, i2 -1}
!104 = !{double 0xBFD3D90958EF2F78, double 0x404056C5D9587664}
!105 = !{!67, !106, i1 false, i2 -1}
!106 = !{double 0xC06D15B176561D99, double 0x406909EC84AC7798}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 2.100000e+01, double 2.100000e+01}
!109 = distinct !{!109, !23}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 1.800000e+01, double 1.800000e+01}
!112 = distinct !{!112, !23}
!113 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!114 = !{i32 1, !55, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39}
!115 = distinct !{null}
!116 = !{!117, !56, i1 false, i2 1}
!117 = !{!"fixp", i32 32, i32 27}
!118 = !{i1 false, !46, i1 false, i2 1}
!119 = !{i32 0}
!120 = !{i1 false, !48, i1 false, i2 1}
!121 = !{i32 2}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 2.000000e+01}
!124 = !{i32 3}
!125 = !{!37, !1, i1 false, i2 1}
!126 = !{i1 false, i1 false, i1 false, i2 1}
!127 = !{!59, i1 false}
!128 = !{!34, !40, i1 false, i2 1}
!129 = !{i1 false, !51, i1 false, i2 1}
!130 = !{!117, !51, i1 false, i2 1}
!131 = !{!132, !133, i1 false, i2 1}
!132 = !{!"fixp", i32 -32, i32 26}
!133 = !{double 5.000000e-02, double 1.050000e+00}
!134 = !{!135, !133, i1 false, i2 1}
!135 = !{!"fixp", i32 32, i32 30}
!136 = !{!37, !137, i1 false, i2 1}
!137 = !{double 2.500000e-02, double 5.250000e-01}
!138 = !{!34, !137, i1 false, i2 1}
!139 = !{i1 false, !19}
!140 = !{!34, !141, i1 false, i2 1}
!141 = !{double 0x4010199980000000, double 0x40121999A0000000}
!142 = !{i1 false, !143}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 4.000000e+00, double 4.000000e+00}
!145 = !{!34, !35, i1 false, i2 1}
!146 = distinct !{!146, !23}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double -2.000000e+01, double 0.000000e+00}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double -1.900000e+01, double 0.000000e+00}
!151 = !{!132, !150, i1 false, i2 1}
!152 = !{!132, !153, i1 false, i2 1}
!153 = !{double 0xBFEE666666666666, double 0.000000e+00}
!154 = !{!155, !153, i1 false, i2 1}
!155 = !{!"fixp", i32 -32, i32 30}
!156 = !{!155, !157, i1 false, i2 1}
!157 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!158 = !{i1 false, !57}
!159 = !{!29, !30, i1 false, i2 1}
!160 = distinct !{!160, !23}
!161 = !{i1 false, !162, i1 false, i2 1}
!162 = !{double 0.000000e+00, double 2.200000e+01}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 1.000000e+00, double 2.200000e+01}
!165 = distinct !{!165, !23}
!166 = !{!57, i1 false}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
!169 = distinct !{!169, !23}
!170 = !{!75, !171, i1 false, i2 -1}
!171 = !{double 1.010000e+00, double 0x4052BD959B3D07C8}
!172 = !{i1 false, !32, i1 false, i2 -1}
!173 = distinct !{!173, !23}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
