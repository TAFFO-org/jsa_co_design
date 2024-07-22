; ModuleID = './build/bin/fixed/lu/16/lu-standard-1-fixed-16.out.ll.4.taffotmp.ll'
source_filename = "./sources/lu.c"
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
  %A.u4_28fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !28, !taffo.target !31
  %arraydecay.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  call void @init_array.2_fixp(i32 20, [20 x i32]* %arraydecay.u4_28fixp), !taffo.info !32, !taffo.constinfo !33, !taffo.target !31
  call void @timer_start(), !taffo.constinfo !34
  %arraydecay2.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !28, !taffo.target !31
  call void @kernel_lu.1_fixp(i32 20, [20 x i32]* %arraydecay2.u4_28fixp), !taffo.info !32, !taffo.constinfo !33, !taffo.target !31
  call void @timer_stop(), !taffo.constinfo !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !35
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !37
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !35
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.info !37
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %arrayidx.u4_28fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u4_28fixp, i32 0, i32 %i.0, !taffo.info !28, !taffo.target !31
  %arrayidx6.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28, !taffo.target !31
  %u4_28fixp = load i32, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !28, !taffo.target !31
  %0 = uitofp i32 %u4_28fixp to float, !taffo.info !28, !taffo.target !31
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !28, !taffo.target !31
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx8, align 4, !taffo.info !32, !taffo.target !31
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !39, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !41

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !39, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !42

for.end11:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !33
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !43 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !37
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !37
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !46
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !48
  %add = add nsw i32 %mul, %j.0, !taffo.info !48
  %rem = srem i32 %add, 20, !taffo.info !48, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !46
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
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !50
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !51

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !52

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1_fixp(i32 noundef %n, [20 x i32]* noundef %A.u4_28fixp) #0 !taffo.initweight !53 !taffo.funinfo !54 !taffo.sourceFunction !55 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !37
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !37
  %cmp2 = icmp slt i32 %j.0, %i.0, !taffo.info !48
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !37
  %cmp5 = icmp slt i32 %k.0, %j.0, !taffo.info !48
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx8.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %k.0, !taffo.info !28
  %u4_28fixp = load i32, i32* %arrayidx8.u4_28fixp, align 4, !taffo.info !28
  %arrayidx9.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %k.0, !taffo.info !28
  %arrayidx10.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx9.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp1 = load i32, i32* %arrayidx10.u4_28fixp, align 4, !taffo.info !28
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !28
  %1 = lshr i32 %u4_28fixp1, 1, !taffo.info !28
  %2 = ashr i32 %0, 3, !taffo.info !28
  %3 = ashr i32 %1, 3, !taffo.info !28
  %mul.s8_24fixp = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !56
  %arrayidx11.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx12.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp2 = load i32, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !28
  %4 = lshr i32 %u4_28fixp2, 4, !taffo.info !28
  %sub.s8_24fixp = sub i32 %4, %mul.s8_24fixp, !taffo.info !59
  %5 = shl i32 %sub.s8_24fixp, 4, !taffo.info !59
  store i32 %5, i32* %arrayidx12.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !62

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %j.0, !taffo.info !28
  %arrayidx14.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp3 = load i32, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !28
  %arrayidx15.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx16.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx15.u4_28fixp, i32 0, i32 %j.0, !taffo.info !28
  %u4_28fixp4 = load i32, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !28
  %6 = lshr i32 %u4_28fixp4, 1, !taffo.info !28
  %7 = lshr i32 %u4_28fixp3, 1, !taffo.info !28
  %8 = ashr i32 %6, 3, !taffo.info !28
  %9 = ashr i32 %7, 3, !taffo.info !28
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 24), !taffo.info !63
  %div.u7_25fixp = shl i32 %10, 1, !taffo.info !65
  %11 = shl i32 %div.u7_25fixp, 3, !taffo.info !65
  store i32 %11, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !32
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !67

for.end19:                                        ; preds = %for.cond1
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !37
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !46
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc37, %for.inc36 ], !taffo.info !37
  %cmp24 = icmp slt i32 %k.1, %i.0, !taffo.info !48
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %arrayidx28.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx29.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u4_28fixp, i32 0, i32 %k.1, !taffo.info !28
  %u4_28fixp5 = load i32, i32* %arrayidx29.u4_28fixp, align 4, !taffo.info !28
  %arrayidx30.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %k.1, !taffo.info !28
  %arrayidx31.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30.u4_28fixp, i32 0, i32 %j.1, !taffo.info !28
  %u4_28fixp6 = load i32, i32* %arrayidx31.u4_28fixp, align 4, !taffo.info !28
  %12 = lshr i32 %u4_28fixp5, 1, !taffo.info !28
  %13 = lshr i32 %u4_28fixp6, 1, !taffo.info !28
  %14 = ashr i32 %12, 3, !taffo.info !28
  %15 = ashr i32 %13, 3, !taffo.info !28
  %mul32.s8_24fixp = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 24), !taffo.info !56
  %arrayidx33.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !28
  %arrayidx34.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx33.u4_28fixp, i32 0, i32 %j.1, !taffo.info !28
  %u4_28fixp7 = load i32, i32* %arrayidx34.u4_28fixp, align 4, !taffo.info !28
  %16 = lshr i32 %u4_28fixp7, 4, !taffo.info !28
  %sub35.s8_24fixp = sub i32 %16, %mul32.s8_24fixp, !taffo.info !59
  %17 = shl i32 %sub35.s8_24fixp, 4, !taffo.info !59
  store i32 %17, i32* %arrayidx34.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %inc37 = add nsw i32 %k.1, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !68

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !69

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, [20 x i32]* noundef %A.u4_28fixp) #0 !taffo.initweight !53 !taffo.funinfo !54 !taffo.sourceFunction !71 {
entry:
  %B.u7_25fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !72
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !74, !taffo.initweight !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !77, !taffo.initweight !78
  br i1 %cmp, label %for.body, label %for.end22, !taffo.info !79, !taffo.initweight !81

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74, !taffo.initweight !76
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.info !77, !taffo.initweight !78
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !79, !taffo.initweight !81

for.body5:                                        ; preds = %for.cond3
  %sub = sub nsw i32 0, %j.0, !taffo.info !79, !taffo.initweight !78, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !82, !taffo.initweight !81
  %conv.s6_26fixp = shl i32 %rem, 26, !taffo.info !84
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !86
  %0 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !86
  %1 = call i32 @llvm.sdiv.fix.i32(i32 %conv.s6_26fixp, i32 %0, i32 26), !taffo.info !88
  %div.s3_29fixp = shl i32 %1, 3, !taffo.info !90
  %2 = lshr i32 -2147483648, 2
  %add.s3_29fixp = add i32 %div.s3_29fixp, %2, !taffo.info !92, !taffo.constinfo !94
  %arrayidx.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !95
  %arrayidx7.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !95
  %3 = ashr i32 %add.s3_29fixp, 1, !taffo.info !92, !taffo.constinfo !94
  store i32 %3, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.initweight !78, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !98

for.end:                                          ; preds = %for.cond3
  %add8 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.initweight !78, !taffo.constinfo !21
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %j.1 = phi i32 [ %add8, %for.end ], [ %inc16, %for.inc15 ], !taffo.info !99, !taffo.initweight !76
  %cmp10 = icmp slt i32 %j.1, %n, !taffo.info !77, !taffo.initweight !78
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.info !79, !taffo.initweight !81

for.body12:                                       ; preds = %for.cond9
  %arrayidx13.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !95
  %arrayidx14.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u4_28fixp, i32 0, i32 %j.1, !taffo.info !95
  store i32 0, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !61, !taffo.constinfo !101
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %inc16 = add nsw i32 %j.1, 1, !taffo.info !102, !taffo.initweight !78, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !104

for.end17:                                        ; preds = %for.cond9
  %arrayidx18.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !95
  %arrayidx19.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx18.u4_28fixp, i32 0, i32 %i.0, !taffo.info !95
  store i32 268435456, i32* %arrayidx19.u4_28fixp, align 4, !taffo.info !61, !taffo.constinfo !105
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.initweight !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !106

for.end22:                                        ; preds = %for.cond
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %r.0 = phi i32 [ 0, %for.end22 ], [ %inc38, %for.inc37 ], !taffo.info !37
  %cmp25 = icmp slt i32 %r.0, %n, !taffo.info !46
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %s.0 = phi i32 [ 0, %for.body27 ], [ %inc35, %for.inc34 ], !taffo.info !37
  %cmp29 = icmp slt i32 %s.0, %n, !taffo.info !46
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %arrayidx32.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u7_25fixp, i32 0, i32 %r.0, !taffo.info !72
  %arrayidx33.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx32.u7_25fixp, i32 0, i32 %s.0, !taffo.info !72
  store i32 0, i32* %arrayidx33.u7_25fixp, align 4, !taffo.info !61, !taffo.constinfo !101
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %s.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !107

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %r.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !108

for.end39:                                        ; preds = %for.cond24
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %t.0 = phi i32 [ 0, %for.end39 ], [ %inc66, %for.inc65 ], !taffo.info !37
  %cmp41 = icmp slt i32 %t.0, %n, !taffo.info !46
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %r.1 = phi i32 [ 0, %for.body43 ], [ %inc63, %for.inc62 ], !taffo.info !37
  %cmp45 = icmp slt i32 %r.1, %n, !taffo.info !46
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %s.1 = phi i32 [ 0, %for.body47 ], [ %inc60, %for.inc59 ], !taffo.info !37
  %cmp49 = icmp slt i32 %s.1, %n, !taffo.info !46
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %arrayidx52.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %r.1, !taffo.info !28
  %arrayidx53.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u4_28fixp, i32 0, i32 %t.0, !taffo.info !28
  %u4_28fixp = load i32, i32* %arrayidx53.u4_28fixp, align 4, !taffo.info !28
  %arrayidx54.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %s.1, !taffo.info !28
  %arrayidx55.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx54.u4_28fixp, i32 0, i32 %t.0, !taffo.info !28
  %u4_28fixp1 = load i32, i32* %arrayidx55.u4_28fixp, align 4, !taffo.info !28
  %4 = lshr i32 %u4_28fixp, 1, !taffo.info !28
  %5 = lshr i32 %u4_28fixp1, 1, !taffo.info !28
  %6 = ashr i32 %4, 3, !taffo.info !28
  %7 = ashr i32 %5, 3, !taffo.info !28
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 24), !taffo.info !109
  %mul.u7_25fixp = shl i32 %8, 1, !taffo.info !110
  %arrayidx56.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u7_25fixp, i32 0, i32 %r.1, !taffo.info !72
  %arrayidx57.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx56.u7_25fixp, i32 0, i32 %s.1, !taffo.info !72
  %u7_25fixp2 = load i32, i32* %arrayidx57.u7_25fixp, align 4, !taffo.info !111
  %add58.u7_25fixp = add i32 %u7_25fixp2, %mul.u7_25fixp, !taffo.info !113
  store i32 %add58.u7_25fixp, i32* %arrayidx57.u7_25fixp, align 4, !taffo.info !61
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nsw i32 %s.1, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !114

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %inc63 = add nsw i32 %r.1, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !115

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %inc66 = add nsw i32 %t.0, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !116

for.end67:                                        ; preds = %for.cond40
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %r.2 = phi i32 [ 0, %for.end67 ], [ %inc84, %for.inc83 ], !taffo.info !37
  %cmp69 = icmp slt i32 %r.2, %n, !taffo.info !46
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %s.2 = phi i32 [ 0, %for.body71 ], [ %inc81, %for.inc80 ], !taffo.info !37
  %cmp73 = icmp slt i32 %s.2, %n, !taffo.info !46
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %arrayidx76.u7_25fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u7_25fixp, i32 0, i32 %r.2, !taffo.info !72
  %arrayidx77.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76.u7_25fixp, i32 0, i32 %s.2, !taffo.info !72
  %u7_25fixp = load i32, i32* %arrayidx77.u7_25fixp, align 4, !taffo.info !72
  %arrayidx78.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u4_28fixp, i32 %r.2, !taffo.info !28
  %arrayidx79.u4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx78.u4_28fixp, i32 0, i32 %s.2, !taffo.info !28
  %9 = shl i32 %u7_25fixp, 3, !taffo.info !72
  store i32 %9, i32* %arrayidx79.u4_28fixp, align 4, !taffo.info !61
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %s.2, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond72, !llvm.loop !117

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %r.2, 1, !taffo.info !46, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !118

for.end85:                                        ; preds = %for.cond68
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
!1 = !{double 0.000000e+00, double 8.172500e+00}
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
!31 = !{!"A"}
!32 = !{i1 false, !30, i1 false, i2 -1}
!33 = !{i1 false, i1 false, i1 false}
!34 = !{i1 false}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 2.100000e+01}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 1.000000e+00}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 1.000000e+00, double 2.100000e+01}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{i32 1, !44, i32 1, !0}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 2.000000e+01, double 2.000000e+01}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 1.000000e+00, double 1.000000e+00}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 0.000000e+00}
!50 = !{i1 false, i1 false, i1 false, i1 false}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{i32 -1, i32 2}
!54 = !{i32 1, !44, i32 1, !28}
!55 = distinct !{null}
!56 = !{!57, !58, i1 false, i2 1}
!57 = !{!"fixp", i32 -32, i32 24}
!58 = !{double 0x3F847AE147AE147C, double 0x4050B28B5DCC63F1}
!59 = !{!57, !60, i1 false, i2 1}
!60 = !{double 0xC050AC24F765FD8B, double 8.162500e+00}
!61 = !{i1 false, i1 false, i1 false, i2 1}
!62 = distinct !{!62, !23}
!63 = !{!57, !64, i1 false, i2 -1}
!64 = !{double 0x3F890F454E3BAC5E, double 8.172500e+01}
!65 = !{!66, !64, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 25}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = distinct !{null}
!72 = !{!66, !73, i1 false, i2 1}
!73 = !{double 0.000000e+00, double 0x4050B28B5DCC63F1}
!74 = !{i1 false, !75, i1 false, i2 1}
!75 = !{double -2.000000e+01, double 2.100000e+01}
!76 = !{i32 0}
!77 = !{i1 false, !38, i1 false, i2 1}
!78 = !{i32 2}
!79 = !{i1 false, !80, i1 false, i2 1}
!80 = !{double -2.000000e+01, double 2.000000e+01}
!81 = !{i32 3}
!82 = !{i1 false, !83, i1 false, i2 1}
!83 = !{double -1.900000e+01, double 1.900000e+01}
!84 = !{!85, !83, i1 false, i2 1}
!85 = !{!"fixp", i32 -32, i32 26}
!86 = !{!87, !45, i1 false, i2 1}
!87 = !{!"fixp", i32 32, i32 27}
!88 = !{!85, !89, i1 false, i2 1}
!89 = !{double 0xBFEE666666666666, double 0x3FEE666666666666}
!90 = !{!91, !89, i1 false, i2 1}
!91 = !{!"fixp", i32 -32, i32 29}
!92 = !{!91, !93, i1 false, i2 1}
!93 = !{double 0x3FA99999999999A0, double 1.950000e+00}
!94 = !{i1 false, !46}
!95 = !{!29, !30, i1 false, i2 1}
!96 = !{i1 false, !97, i1 false, i2 1}
!97 = !{double -1.900000e+01, double 2.100000e+01}
!98 = distinct !{!98, !23}
!99 = !{i1 false, !100, i1 false, i2 1}
!100 = !{double -2.000000e+01, double 2.200000e+01}
!101 = !{!48, i1 false}
!102 = !{i1 false, !103, i1 false, i2 1}
!103 = !{double -1.900000e+01, double 2.200000e+01}
!104 = distinct !{!104, !23}
!105 = !{!46, i1 false}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = !{!57, !58, i1 false, i2 -1}
!110 = !{!66, !58, i1 false, i2 -1}
!111 = !{!112, !49, i1 false, i2 1}
!112 = !{!"fixp", i32 32, i32 32}
!113 = !{!66, !58, i1 false, i2 1}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
