; ModuleID = './build/bin/fixed/trmm/24/trmm-standard-1-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A.u1_31fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !31
  %B.u3_29fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !34, !taffo.target !36
  %arraydecay.u1_31fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay4.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !34, !taffo.target !36
  call void @init_array.2_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, [10 x i32]* %arraydecay.u1_31fixp, [16 x i32]* %arraydecay4.u3_29fixp), !taffo.info !37, !taffo.constinfo !38
  call void @timer_start(), !taffo.constinfo !39
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !40
  %arraydecay5.u1_31fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay6.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 0, !taffo.info !34, !taffo.target !36
  %0 = lshr i32 %u2_30fixp, 2, !taffo.info !40
  call void @kernel_trmm.1_fixp(i32 10, i32 16, i32 %0, [10 x i32]* %arraydecay5.u1_31fixp, [16 x i32]* %arraydecay6.u3_29fixp), !taffo.info !37, !taffo.constinfo !38
  call void @timer_stop(), !taffo.constinfo !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !42
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !45
  %cmp8 = icmp slt i32 %j.0, 16, !taffo.info !44
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %arrayidx.u3_29fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u3_29fixp, i32 0, i32 %i.0, !taffo.info !34, !taffo.target !36
  %arrayidx10.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !34, !taffo.target !36
  %u3_29fixp = load i32, i32* %arrayidx10.u3_29fixp, align 4, !taffo.info !34, !taffo.target !36
  %1 = uitofp i32 %u3_29fixp to float, !taffo.info !34, !taffo.target !36
  %2 = fdiv float %1, 0x41C0000000000000, !taffo.info !34, !taffo.target !36
  %arrayidx11 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx12, align 4, !taffo.info !47, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !48, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !50

for.end:                                          ; preds = %for.cond7
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !53

for.end15:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !54
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !55 !taffo.funinfo !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !44
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !59
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !61
  %add = add nsw i32 %mul, %j.0, !taffo.info !61
  %rem = srem i32 %add, 20, !taffo.info !61, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !59
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !63
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !54
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !64

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !65

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.1_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u4_28fixp, [10 x i32]* noundef %A.u1_31fixp, [16 x i32]* noundef %B.u3_29fixp) #0 !taffo.initweight !66 !taffo.funinfo !67 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !44
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !59
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !69
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !59
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %k.0, !taffo.info !31
  %arrayidx7.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %i.0, !taffo.info !31
  %u1_31fixp = load i32, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !71
  %arrayidx8.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %k.0, !taffo.info !34
  %arrayidx9.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8.u3_29fixp, i32 0, i32 %j.0, !taffo.info !34
  %u3_29fixp = load i32, i32* %arrayidx9.u3_29fixp, align 4, !taffo.info !34
  %0 = lshr i32 %u1_31fixp, 1, !taffo.info !71
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !34
  %2 = ashr i32 %0, 3, !taffo.info !71
  %3 = ashr i32 %1, 1, !taffo.info !34
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 27), !taffo.info !72
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !74
  %arrayidx10.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !34
  %arrayidx11.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u3_29fixp, i32 0, i32 %j.0, !taffo.info !34
  %u3_29fixp1 = load i32, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !74
  %5 = lshr i32 %u3_29fixp1, 1, !taffo.info !74
  %add12.u4_28fixp = add i32 %5, %mul.u4_28fixp, !taffo.info !75
  %6 = shl i32 %add12.u4_28fixp, 1, !taffo.info !75
  store i32 %6, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !47
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !77

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !34
  %arrayidx14.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u3_29fixp, i32 0, i32 %j.0, !taffo.info !34
  %u3_29fixp2 = load i32, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !74
  %7 = lshr i32 %alpha.u4_28fixp, 1, !taffo.info !40
  %8 = lshr i32 %u3_29fixp2, 1, !taffo.info !74
  %9 = ashr i32 %8, 1, !taffo.info !74
  %10 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %9, i32 27), !taffo.info !78
  %mul15.u4_28fixp = shl i32 %10, 1, !taffo.info !80
  %arrayidx16.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !34
  %arrayidx17.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16.u3_29fixp, i32 0, i32 %j.0, !taffo.info !34
  %11 = shl i32 %mul15.u4_28fixp, 1, !taffo.info !80
  store i32 %11, i32* %arrayidx17.u3_29fixp, align 4, !taffo.info !37
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !81

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !82

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u1_31fixp, [16 x i32]* noundef %B.u3_29fixp) #0 !taffo.initweight !83 !taffo.funinfo !84 !taffo.sourceFunction !85 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !37, !taffo.constinfo !86
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !88, !taffo.initweight !89
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !92, !taffo.initweight !93

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !94, !taffo.initweight !89
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !96, !taffo.initweight !93

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !92, !taffo.initweight !93

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !98, !taffo.initweight !91
  %rem = srem i32 %add, %m, !taffo.info !100, !taffo.initweight !93
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !102
  %conv7.u4_28fixp = shl i32 %m, 28, !taffo.info !103
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !102
  %1 = lshr i32 %conv7.u4_28fixp, 1, !taffo.info !103
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !104
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !106
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !107
  %arrayidx8.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !107
  store i32 %div.u1_31fixp, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !108
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !107
  %arrayidx10.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9.u1_31fixp, i32 0, i32 %j.0, !taffo.info !107
  store i32 0, i32* %arrayidx10.u1_31fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !110, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !112

for.end:                                          ; preds = %for.cond3
  %arrayidx11.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !107
  %arrayidx12.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u1_31fixp, i32 0, i32 %i.0, !taffo.info !107
  store i32 -2147483648, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !108, !taffo.constinfo !113
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !94, !taffo.initweight !89
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !90, !taffo.initweight !91
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !96, !taffo.initweight !93

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !114, !taffo.initweight !91
  %add17 = add nsw i32 %n, %sub, !taffo.info !98, !taffo.initweight !93
  %rem18 = srem i32 %add17, %n, !taffo.info !116, !taffo.initweight !118
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !119
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !120
  %3 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !119
  %4 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !120
  %5 = ashr i32 %3, 1, !taffo.info !119
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %4, i32 26), !taffo.info !122
  %div21.u1_31fixp = shl i32 %6, 5, !taffo.info !125
  %arrayidx22.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u3_29fixp, i32 %i.0, !taffo.info !126
  %arrayidx23.u3_29fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u3_29fixp, i32 0, i32 %j.1, !taffo.info !126
  %7 = lshr i32 %div21.u1_31fixp, 2, !taffo.info !125
  store i32 %7, i32* %arrayidx23.u3_29fixp, align 4, !taffo.info !108
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !110, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !127

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !128, !taffo.initweight !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end29:                                        ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 0x4017100000000000}
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
!31 = !{!32, !33, i1 false, i2 -1}
!32 = !{!"fixp", i32 32, i32 31}
!33 = !{double 0.000000e+00, double 1.000000e+00}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 29}
!36 = !{!"B"}
!37 = !{i1 false, !30, i1 false, i2 -1}
!38 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!39 = !{i1 false}
!40 = !{!41, !30, i1 false, i2 -1}
!41 = !{!"fixp", i32 32, i32 28}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 1.100000e+01}
!44 = !{i1 false, !33, i1 false, i2 0}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.870000e+02}
!47 = !{i1 false, !1, i1 false, i2 -1}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 1.870000e+02}
!50 = distinct !{!50, !23}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 1.000000e+00, double 1.100000e+01}
!53 = distinct !{!53, !23}
!54 = !{i1 false, i1 false, i1 false, i1 false}
!55 = !{i32 -1, i32 -1, i32 -1}
!56 = !{i32 1, !16, i32 1, !57, i32 1, !0}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.600000e+01, double 1.600000e+01}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 1.000000e+00}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 0.000000e+00}
!63 = !{i1 false, i1 false, i1 false}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!67 = !{i32 1, !16, i32 1, !57, i32 1, !40, i32 1, !31, i32 1, !34}
!68 = distinct !{null}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.000000e+00}
!71 = !{!35, !33, i1 false, i2 -1}
!72 = !{!73, !1, i1 false, i2 -1}
!73 = !{!"fixp", i32 -32, i32 27}
!74 = !{!41, !1, i1 false, i2 -1}
!75 = !{!41, !76, i1 false, i2 -1}
!76 = !{double 0.000000e+00, double 0x4027100000000000}
!77 = distinct !{!77, !23}
!78 = !{!73, !79, i1 false, i2 -1}
!79 = !{double 0.000000e+00, double 0x40214C0000000000}
!80 = !{!41, !79, i1 false, i2 -1}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!84 = !{i32 1, !16, i32 1, !57, i32 1, !28, i32 1, !31, i32 1, !34}
!85 = distinct !{null}
!86 = !{!87, i1 false}
!87 = !{i1 false, !30, i1 false, i2 0}
!88 = !{i1 false, !43, i1 false, i2 1}
!89 = !{i32 0}
!90 = !{i1 false, !33, i1 false, i2 1}
!91 = !{i32 2}
!92 = !{i1 false, !3, i1 false, i2 1}
!93 = !{i32 3}
!94 = !{i1 false, !95, i1 false, i2 1}
!95 = !{double 0.000000e+00, double 1.700000e+01}
!96 = !{i1 false, !97, i1 false, i2 1}
!97 = !{double 0.000000e+00, double 1.600000e+01}
!98 = !{i1 false, !99, i1 false, i2 1}
!99 = !{double 0.000000e+00, double 2.600000e+01}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 0.000000e+00, double 9.000000e+00}
!102 = !{!41, !101, i1 false, i2 1}
!103 = !{!41, !17, i1 false, i2 1}
!104 = !{!73, !105, i1 false, i2 1}
!105 = !{double 0.000000e+00, double 9.000000e-01}
!106 = !{!32, !105, i1 false, i2 1}
!107 = !{!32, !33, i1 false, i2 1}
!108 = !{i1 false, i1 false, i1 false, i2 1}
!109 = !{!61, i1 false}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 1.000000e+00, double 1.700000e+01}
!112 = distinct !{!112, !23}
!113 = !{!59, i1 false}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double -1.600000e+01, double 1.000000e+01}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 0.000000e+00, double 1.500000e+01}
!118 = !{i32 4}
!119 = !{!41, !117, i1 false, i2 1}
!120 = !{!121, !58, i1 false, i2 1}
!121 = !{!"fixp", i32 32, i32 27}
!122 = !{!123, !124, i1 false, i2 1}
!123 = !{!"fixp", i32 -32, i32 26}
!124 = !{double 0.000000e+00, double 9.375000e-01}
!125 = !{!32, !124, i1 false, i2 1}
!126 = !{!35, !1, i1 false, i2 1}
!127 = distinct !{!127, !23}
!128 = !{i1 false, !52, i1 false, i2 1}
!129 = distinct !{!129, !23}
