; ModuleID = './build/bin/fixed/gesummv/24/gesummv-standard-1-fixed-24.out.ll.4.taffotmp.ll'
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
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !28
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !31
  %A.u1_31fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !33
  %B.u1_31fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !33
  %tmp.u3_29fixp = alloca [16 x i32], align 4, !taffo.info !36
  %x.u1_31fixp = alloca [16 x i32], align 4, !taffo.info !33
  %y.u4_28fixp = alloca [16 x i32], align 4, !taffo.info !39, !taffo.target !41
  %arraydecay.u1_31fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay8.u1_31fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay9.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay10.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay11.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !39, !taffo.target !41
  call void @init_array.2_fixp(i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u1_31fixp, [16 x i32]* %arraydecay8.u1_31fixp, i32* %arraydecay9.u1_31fixp, i32* %arraydecay10.u3_29fixp, i32* %arraydecay11.u4_28fixp), !taffo.info !42, !taffo.constinfo !43
  call void @timer_start(), !taffo.constinfo !44
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !45
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !46
  %arraydecay12.u1_31fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay13.u1_31fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay14.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay15.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %x.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay16.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u4_28fixp, i32 0, i32 0, !taffo.info !39, !taffo.target !41
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !45
  %1 = lshr i32 %u2_30fixp1, 2, !taffo.info !46
  call void @kernel_gesummv.1_fixp(i32 16, i32 %0, i32 %1, [16 x i32]* %arraydecay12.u1_31fixp, [16 x i32]* %arraydecay13.u1_31fixp, i32* %arraydecay14.u3_29fixp, i32* %arraydecay15.u1_31fixp, i32* %arraydecay16.u4_28fixp), !taffo.info !42, !taffo.constinfo !43
  call void @timer_stop(), !taffo.constinfo !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %y.u4_28fixp, i32 0, i32 %i.0, !taffo.info !39, !taffo.target !41
  %u4_28fixp = load i32, i32* %arrayidx.u4_28fixp, align 4, !taffo.info !39, !taffo.target !41
  %2 = uitofp i32 %u4_28fixp to float, !taffo.info !39, !taffo.target !41
  %3 = fdiv float %2, 0x41B0000000000000, !taffo.info !39, !taffo.target !41
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %3, float* %arrayidx17, align 4, !taffo.info !51, !taffo.target !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !55
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !25 !taffo.funinfo !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !61, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !59
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !55
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !63
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.1_fixp(i32 noundef %n, i32 noundef %alpha.u3_29fixp, i32 noundef %beta.u4_28fixp, [16 x i32]* noundef %A.u1_31fixp, [16 x i32]* noundef %B.u1_31fixp, i32* noundef %tmp.u3_29fixp, i32* noundef %x.u1_31fixp, i32* noundef %y.u4_28fixp) #0 !taffo.initweight !65 !taffo.funinfo !66 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.0, !taffo.info !36
  store i32 0, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !68, !taffo.constinfo !69
  %arrayidx1.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !39
  store i32 0, i32* %arrayidx1.u4_28fixp, align 4, !taffo.info !68, !taffo.constinfo !69
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !59
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !33
  %arrayidx6.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx5.u1_31fixp, i32 0, i32 %j.0, !taffo.info !33
  %u1_31fixp4 = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !33
  %arrayidx7.u1_31fixp = getelementptr inbounds i32, i32* %x.u1_31fixp, i32 %j.0, !taffo.info !33
  %u1_31fixp = load i32, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !33
  %0 = lshr i32 %u1_31fixp4, 1, !taffo.info !33
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !33
  %2 = ashr i32 %0, 2, !taffo.info !33
  %3 = ashr i32 %1, 2, !taffo.info !33
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !70
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !73
  %arrayidx8.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.0, !taffo.info !36
  %u3_29fixp = load i32, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !36
  %add.u3_29fixp = add i32 %mul.u3_29fixp, %u3_29fixp, !taffo.info !74
  %arrayidx9.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.0, !taffo.info !36
  store i32 %add.u3_29fixp, i32* %arrayidx9.u3_29fixp, align 4, !taffo.info !76
  %arrayidx10.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u1_31fixp, i32 %i.0, !taffo.info !33
  %arrayidx11.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u1_31fixp, i32 0, i32 %j.0, !taffo.info !33
  %u1_31fixp5 = load i32, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !33
  %arrayidx12.u1_31fixp = getelementptr inbounds i32, i32* %x.u1_31fixp, i32 %j.0, !taffo.info !33
  %u1_31fixp2 = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !33
  %5 = lshr i32 %u1_31fixp5, 1, !taffo.info !33
  %6 = lshr i32 %u1_31fixp2, 1, !taffo.info !33
  %7 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %6, i32 30), !taffo.info !77
  %mul13.u1_31fixp = shl i32 %7, 1, !taffo.info !79
  %arrayidx14.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !39
  %u4_28fixp = load i32, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !39
  %8 = lshr i32 %mul13.u1_31fixp, 3, !taffo.info !79
  %add15.u4_28fixp = add i32 %8, %u4_28fixp, !taffo.info !80
  %arrayidx16.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !39
  store i32 %add15.u4_28fixp, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !82

for.end:                                          ; preds = %for.cond2
  %arrayidx17.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.0, !taffo.info !36
  %u3_29fixp1 = load i32, i32* %arrayidx17.u3_29fixp, align 4, !taffo.info !36
  %9 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !45
  %10 = lshr i32 %u3_29fixp1, 1, !taffo.info !36
  %11 = ashr i32 %9, 2, !taffo.info !45
  %12 = ashr i32 %10, 2, !taffo.info !36
  %13 = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !83
  %mul18.u5_27fixp = shl i32 %13, 1, !taffo.info !86
  %arrayidx19.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !39
  %u4_28fixp3 = load i32, i32* %arrayidx19.u4_28fixp, align 4, !taffo.info !39
  %14 = lshr i32 %beta.u4_28fixp, 1, !taffo.info !46
  %15 = lshr i32 %u4_28fixp3, 1, !taffo.info !39
  %16 = ashr i32 %14, 1, !taffo.info !46
  %17 = ashr i32 %15, 1, !taffo.info !39
  %18 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %17, i32 26), !taffo.info !88
  %mul20.u5_27fixp = shl i32 %18, 1, !taffo.info !90
  %add21.u5_27fixp = add i32 %mul18.u5_27fixp, %mul20.u5_27fixp, !taffo.info !91
  %arrayidx22.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !39
  %19 = shl i32 %add21.u5_27fixp, 1, !taffo.info !91
  store i32 %19, i32* %arrayidx22.u4_28fixp, align 4, !taffo.info !51
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %A.u1_31fixp, [16 x i32]* noundef %B.u1_31fixp, i32* noundef %x.u1_31fixp, i32* noundef %tmp.u3_29fixp, i32* noundef %y.u4_28fixp) #0 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !96 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !42, !taffo.constinfo !97
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !99, !taffo.constinfo !100
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !103, !taffo.initweight !104
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !105, !taffo.initweight !106
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !107, !taffo.initweight !109

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !110, !taffo.initweight !106
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !112
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !113
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !112
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !113
  %2 = ashr i32 %0, 1, !taffo.info !112
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !114
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !115
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %x.u1_31fixp, i32 %i.0, !taffo.info !115
  store i32 %div.u1_31fixp, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !68
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %y.u4_28fixp, i32 %i.0, !taffo.info !116
  store i32 0, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !68, !taffo.constinfo !69
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %tmp.u3_29fixp, i32 %i.0, !taffo.info !117
  store i32 0, i32* %arrayidx5.u3_29fixp, align 4, !taffo.info !68, !taffo.constinfo !69
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !103, !taffo.initweight !104
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !105, !taffo.initweight !106
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !107, !taffo.initweight !109

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !106
  %add = add nsw i32 %mul, 1, !taffo.info !120, !taffo.initweight !109, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !110, !taffo.initweight !122
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !112
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !113
  %4 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !112
  %5 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !113
  %6 = ashr i32 %4, 1, !taffo.info !112
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !114
  %div13.u1_31fixp = shl i32 %7, 5, !taffo.info !115
  %arrayidx14.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !115
  %arrayidx15.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %j.0, !taffo.info !115
  store i32 %div13.u1_31fixp, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !68
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !106
  %add17 = add nsw i32 %mul16, 2, !taffo.info !123, !taffo.initweight !109, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !110, !taffo.initweight !122
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !112
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !113
  %8 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !112
  %9 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !113
  %10 = ashr i32 %8, 1, !taffo.info !112
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %10, i32 %9, i32 26), !taffo.info !114
  %div21.u1_31fixp = shl i32 %11, 5, !taffo.info !115
  %arrayidx22.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u1_31fixp, i32 %i.0, !taffo.info !115
  %arrayidx23.u1_31fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u1_31fixp, i32 0, i32 %j.0, !taffo.info !115
  store i32 %div21.u1_31fixp, i32* %arrayidx23.u1_31fixp, align 4, !taffo.info !68
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !125, !taffo.initweight !106, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !126

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !125, !taffo.initweight !106, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !127

for.end26:                                        ; preds = %for.cond
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
!31 = !{!29, !32, i1 false, i2 -1}
!32 = !{double 1.200000e+00, double 1.200000e+00}
!33 = !{!34, !35, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 31}
!35 = !{double 0.000000e+00, double 9.375000e-01}
!36 = !{!37, !38, i1 false, i2 -1}
!37 = !{!"fixp", i32 32, i32 29}
!38 = !{double 0.000000e+00, double 4.406250e+00}
!39 = !{!40, !1, i1 false, i2 -1}
!40 = !{!"fixp", i32 32, i32 28}
!41 = !{!"y"}
!42 = !{i1 false, !30, i1 false, i2 -1}
!43 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!44 = !{i1 false}
!45 = !{!37, !30, i1 false, i2 -1}
!46 = !{!40, !32, i1 false, i2 -1}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.700000e+01}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.000000e+00}
!51 = !{i1 false, !1, i1 false, i2 -1}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 1.700000e+01}
!54 = distinct !{!54, !23}
!55 = !{i1 false, i1 false, i1 false}
!56 = !{i32 1, !57, i32 1, !0}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.600000e+01, double 1.600000e+01}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 1.000000e+00}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 0.000000e+00}
!63 = !{i1 false, i1 false, i1 false, i1 false}
!64 = distinct !{!64, !23}
!65 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!66 = !{i32 1, !57, i32 1, !45, i32 1, !46, i32 1, !33, i32 1, !33, i32 1, !36, i32 1, !33, i32 1, !39}
!67 = distinct !{null}
!68 = !{i1 false, i1 false, i1 false, i2 1}
!69 = !{!61, i1 false}
!70 = !{!71, !72, i1 false, i2 -1}
!71 = !{!"fixp", i32 -32, i32 28}
!72 = !{double 0.000000e+00, double 0x3FEC200000000000}
!73 = !{!37, !72, i1 false, i2 -1}
!74 = !{!37, !75, i1 false, i2 -1}
!75 = !{double 0.000000e+00, double 0x4015240000000000}
!76 = !{i1 false, !38, i1 false, i2 -1}
!77 = !{!78, !72, i1 false, i2 -1}
!78 = !{!"fixp", i32 -32, i32 30}
!79 = !{!34, !72, i1 false, i2 -1}
!80 = !{!40, !81, i1 false, i2 -1}
!81 = !{double 0.000000e+00, double 0x4028686687F455A8}
!82 = distinct !{!82, !23}
!83 = !{!84, !85, i1 false, i2 -1}
!84 = !{!"fixp", i32 -32, i32 26}
!85 = !{double 0.000000e+00, double 0x401A700000000000}
!86 = !{!87, !85, i1 false, i2 -1}
!87 = !{!"fixp", i32 32, i32 27}
!88 = !{!84, !89, i1 false, i2 -1}
!89 = !{double 0.000000e+00, double 0x402B2E14A3253396}
!90 = !{!87, !89, i1 false, i2 -1}
!91 = !{!87, !92, i1 false, i2 -1}
!92 = !{double 0.000000e+00, double 0x4034330A519299CB}
!93 = distinct !{!93, !23}
!94 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!95 = !{i32 1, !57, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !33, i32 1, !33, i32 1, !36, i32 1, !39}
!96 = distinct !{null}
!97 = !{!98, i1 false}
!98 = !{i1 false, !30, i1 false, i2 0}
!99 = !{i1 false, !32, i1 false, i2 -1}
!100 = !{!101, i1 false}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!103 = !{i1 false, !48, i1 false, i2 1}
!104 = !{i32 0}
!105 = !{i1 false, !50, i1 false, i2 1}
!106 = !{i32 2}
!107 = !{i1 false, !108, i1 false, i2 1}
!108 = !{double 0.000000e+00, double 1.600000e+01}
!109 = !{i32 3}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 1.500000e+01}
!112 = !{!40, !111, i1 false, i2 1}
!113 = !{!87, !58, i1 false, i2 1}
!114 = !{!84, !35, i1 false, i2 1}
!115 = !{!34, !35, i1 false, i2 1}
!116 = !{!40, !1, i1 false, i2 1}
!117 = !{!37, !38, i1 false, i2 1}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 2.560000e+02}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 1.000000e+00, double 2.570000e+02}
!122 = !{i32 4}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 2.000000e+00, double 2.580000e+02}
!125 = !{i1 false, !53, i1 false, i2 1}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
