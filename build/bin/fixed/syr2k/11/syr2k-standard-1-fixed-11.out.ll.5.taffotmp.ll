; ModuleID = './build/bin/fixed/syr2k/11/syr2k-standard-1-fixed-11.out.ll.4.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %C.u4_28fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !33, !taffo.target !35
  %A.u1_31fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !36
  %B.u1_31fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !39
  %arraydecay.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay6.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay7.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  call void @init_array.2_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u4_28fixp, [10 x i32]* %arraydecay6.u1_31fixp, [10 x i32]* %arraydecay7.u1_31fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_start(), !taffo.constinfo !43
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !28
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !44
  %arraydecay8.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay9.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay10.u1_31fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %0 = lshr i32 %u2_30fixp1, 2, !taffo.info !44
  call void @kernel_syr2k.1_fixp(i32 16, i32 10, i32 %u2_30fixp, i32 %0, [16 x i32]* %arraydecay8.u4_28fixp, [10 x i32]* %arraydecay9.u1_31fixp, [10 x i32]* %arraydecay10.u1_31fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_stop(), !taffo.constinfo !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !47
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx.u4_28fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u4_28fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %arrayidx14.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33, !taffo.target !35
  %u4_28fixp = load i32, i32* %arrayidx14.u4_28fixp, align 4, !taffo.info !33, !taffo.target !35
  %1 = uitofp i32 %u4_28fixp to float, !taffo.info !33, !taffo.target !35
  %2 = fdiv float %1, 0x41B0000000000000, !taffo.info !33, !taffo.target !35
  %arrayidx15 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx16, align 4, !taffo.info !51, !taffo.target !35
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !52, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !54

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !57

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !25 !taffo.funinfo !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !47
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !62
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !64
  %add = add nsw i32 %mul, %j.0, !taffo.info !64
  %rem = srem i32 %add, 20, !taffo.info !64, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !62
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !58
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !66
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !67

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.1_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u4_28fixp, [16 x i32]* noundef %C.u4_28fixp, [10 x i32]* noundef %A.u1_31fixp, [10 x i32]* noundef %B.u1_31fixp) #0 !taffo.initweight !69 !taffo.funinfo !70 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !47
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !47
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx4.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !33
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !33
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !33
  %1 = lshr i32 %beta.u4_28fixp, 1, !taffo.info !44
  %2 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !72
  %mul.u4_28fixp = shl i32 %2, 1, !taffo.info !75
  store i32 %mul.u4_28fixp, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !76
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !77

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !47
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !62
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !47
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !47
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %j.1, !taffo.info !36
  %arrayidx12.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !78
  %3 = lshr i32 %u1_31fixp, 1, !taffo.info !78
  %4 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !28
  %5 = ashr i32 %3, 1, !taffo.info !78
  %6 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %4, i32 29), !taffo.info !79
  %mul13.u2_30fixp = shl i32 %6, 1, !taffo.info !82
  %arrayidx14.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u1_31fixp, i32 %i.0, !taffo.info !39
  %arrayidx15.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %k.0, !taffo.info !39
  %u1_31fixp3 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !83
  %7 = lshr i32 %mul13.u2_30fixp, 1, !taffo.info !82
  %8 = lshr i32 %u1_31fixp3, 1, !taffo.info !83
  %9 = ashr i32 %8, 1, !taffo.info !83
  %10 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %9, i32 29), !taffo.info !84
  %mul16.u2_30fixp = shl i32 %10, 1, !taffo.info !86
  %arrayidx17.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u1_31fixp, i32 %j.1, !taffo.info !39
  %arrayidx18.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx17.u1_31fixp, i32 0, i32 %k.0, !taffo.info !39
  %u1_31fixp4 = load i32, i32* %arrayidx18.u1_31fixp, align 4, !taffo.info !83
  %11 = lshr i32 %u1_31fixp4, 1, !taffo.info !83
  %12 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !28
  %13 = ashr i32 %11, 1, !taffo.info !83
  %14 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %12, i32 29), !taffo.info !87
  %mul19.u2_30fixp = shl i32 %14, 1, !taffo.info !89
  %arrayidx20.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !36
  %arrayidx21.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx20.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp2 = load i32, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !78
  %15 = lshr i32 %mul19.u2_30fixp, 1, !taffo.info !89
  %16 = lshr i32 %u1_31fixp2, 1, !taffo.info !78
  %17 = ashr i32 %16, 1, !taffo.info !78
  %18 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %17, i32 29), !taffo.info !84
  %mul22.u2_30fixp = shl i32 %18, 1, !taffo.info !86
  %19 = lshr i32 %mul16.u2_30fixp, 2, !taffo.info !86
  %20 = lshr i32 %mul22.u2_30fixp, 2, !taffo.info !86
  %add.u4_28fixp = add i32 %19, %20, !taffo.info !90
  %arrayidx23.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.0, !taffo.info !33
  %arrayidx24.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx23.u4_28fixp, i32 0, i32 %j.1, !taffo.info !33
  %u4_28fixp1 = load i32, i32* %arrayidx24.u4_28fixp, align 4, !taffo.info !33
  %add25.u4_28fixp = add i32 %u4_28fixp1, %add.u4_28fixp, !taffo.info !92
  store i32 %add25.u4_28fixp, i32* %arrayidx24.u4_28fixp, align 4, !taffo.info !51
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !94

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !95

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !96

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u4_28fixp, [10 x i32]* noundef %A.u1_31fixp, [10 x i32]* noundef %B.u1_31fixp) #0 !taffo.initweight !97 !taffo.funinfo !98 !taffo.sourceFunction !99 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !41, !taffo.constinfo !100
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !76, !taffo.constinfo !102
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !105, !taffo.initweight !106
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !107, !taffo.initweight !108
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !109, !taffo.initweight !111

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !112, !taffo.initweight !106
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !107, !taffo.initweight !108
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !114, !taffo.initweight !111

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !115, !taffo.initweight !108
  %add = add nsw i32 %mul, 1, !taffo.info !117, !taffo.initweight !111, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !119, !taffo.initweight !121
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !122
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !123
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !122
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !123
  %2 = ashr i32 %0, 1, !taffo.info !122
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !125
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !127
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !127
  %arrayidx7.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !127
  store i32 %div.u1_31fixp, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !128
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !115, !taffo.initweight !108
  %add9 = add nsw i32 %mul8, 2, !taffo.info !129, !taffo.initweight !111, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !131, !taffo.initweight !121
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !133
  %conv12.u4_28fixp = shl i32 %m, 28, !taffo.info !134
  %4 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !133
  %5 = lshr i32 %conv12.u4_28fixp, 1, !taffo.info !134
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 27), !taffo.info !135
  %div13.u1_31fixp = shl i32 %6, 4, !taffo.info !136
  %arrayidx14.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u1_31fixp, i32 %i.0, !taffo.info !136
  %arrayidx15.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %j.0, !taffo.info !136
  store i32 %div13.u1_31fixp, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !128
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !137, !taffo.initweight !108, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !139

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !140, !taffo.initweight !108, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !141

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !105, !taffo.initweight !106
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !107, !taffo.initweight !108
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !109, !taffo.initweight !111

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !112, !taffo.initweight !106
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !142, !taffo.initweight !108
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !114, !taffo.initweight !111

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !115, !taffo.initweight !108
  %add28 = add nsw i32 %mul27, 3, !taffo.info !143, !taffo.initweight !111, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !119, !taffo.initweight !121
  %conv30.u4_28fixp = shl i32 %rem29, 28, !taffo.info !122
  %conv31.u4_28fixp = shl i32 %m, 28, !taffo.info !134
  %7 = lshr i32 %conv30.u4_28fixp, 1, !taffo.info !122
  %8 = lshr i32 %conv31.u4_28fixp, 1, !taffo.info !134
  %9 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %8, i32 27), !taffo.info !145
  %div32.u4_28fixp = shl i32 %9, 1, !taffo.info !147
  %arrayidx33.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u4_28fixp, i32 %i.1, !taffo.info !148
  %arrayidx34.u4_28fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx33.u4_28fixp, i32 0, i32 %j.1, !taffo.info !148
  store i32 %div32.u4_28fixp, i32* %arrayidx34.u4_28fixp, align 4, !taffo.info !128
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !137, !taffo.initweight !108, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !149

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !140, !taffo.initweight !108, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !150

for.end40:                                        ; preds = %for.cond19
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
!1 = !{double 0.000000e+00, double 0x4022180000000000}
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
!33 = !{!34, !1, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 28}
!35 = !{!"C"}
!36 = !{!37, !38, i1 false, i2 -1}
!37 = !{!"fixp", i32 32, i32 31}
!38 = !{double 0.000000e+00, double 9.375000e-01}
!39 = !{!37, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 9.000000e-01}
!41 = !{i1 false, !30, i1 false, i2 -1}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = !{i1 false}
!44 = !{!34, !32, i1 false, i2 -1}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.700000e+01}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 2.890000e+02}
!51 = !{i1 false, !1, i1 false, i2 -1}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 2.890000e+02}
!54 = distinct !{!54, !23}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.700000e+01}
!57 = distinct !{!57, !23}
!58 = !{i1 false, i1 false, i1 false}
!59 = !{i32 1, !60, i32 1, !0}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.600000e+01, double 1.600000e+01}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 0.000000e+00}
!66 = !{i1 false, i1 false, i1 false, i1 false}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!70 = !{i32 1, !60, i32 1, !16, i32 1, !28, i32 1, !44, i32 1, !33, i32 1, !36, i32 1, !39}
!71 = distinct !{null}
!72 = !{!73, !74, i1 false, i2 -1}
!73 = !{!"fixp", i32 -32, i32 27}
!74 = !{double 0.000000e+00, double 0x4025B66666666666}
!75 = !{!34, !74, i1 false, i2 -1}
!76 = !{i1 false, !32, i1 false, i2 -1}
!77 = distinct !{!77, !23}
!78 = !{!29, !38, i1 false, i2 -1}
!79 = !{!80, !81, i1 false, i2 -1}
!80 = !{!"fixp", i32 -32, i32 29}
!81 = !{double 0.000000e+00, double 1.406250e+00}
!82 = !{!29, !81, i1 false, i2 -1}
!83 = !{!29, !40, i1 false, i2 -1}
!84 = !{!80, !85, i1 false, i2 -1}
!85 = !{double 0.000000e+00, double 0x3FF4400000000000}
!86 = !{!29, !85, i1 false, i2 -1}
!87 = !{!80, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 1.350000e+00}
!89 = !{!29, !88, i1 false, i2 -1}
!90 = !{!34, !91, i1 false, i2 -1}
!91 = !{double 0.000000e+00, double 2.531250e+00}
!92 = !{!34, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x4027280000000000}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23}
!96 = distinct !{!96, !23}
!97 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!98 = !{i32 1, !60, i32 1, !16, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39}
!99 = distinct !{null}
!100 = !{!101, i1 false}
!101 = !{i1 false, !30, i1 false, i2 0}
!102 = !{!103, i1 false}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!105 = !{i1 false, !46, i1 false, i2 1}
!106 = !{i32 0}
!107 = !{i1 false, !48, i1 false, i2 1}
!108 = !{i32 2}
!109 = !{i1 false, !110, i1 false, i2 1}
!110 = !{double 0.000000e+00, double 1.600000e+01}
!111 = !{i32 3}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.100000e+01}
!114 = !{i1 false, !3, i1 false, i2 1}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 1.600000e+02}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 1.000000e+00, double 1.610000e+02}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 1.500000e+01}
!121 = !{i32 4}
!122 = !{!34, !120, i1 false, i2 1}
!123 = !{!124, !61, i1 false, i2 1}
!124 = !{!"fixp", i32 32, i32 27}
!125 = !{!126, !38, i1 false, i2 1}
!126 = !{!"fixp", i32 -32, i32 26}
!127 = !{!37, !38, i1 false, i2 1}
!128 = !{i1 false, i1 false, i1 false, i2 1}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 2.000000e+00, double 1.620000e+02}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 9.000000e+00}
!133 = !{!34, !132, i1 false, i2 1}
!134 = !{!34, !17, i1 false, i2 1}
!135 = !{!73, !40, i1 false, i2 1}
!136 = !{!37, !40, i1 false, i2 1}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 1.000000e+00, double 1.100000e+01}
!139 = distinct !{!139, !23}
!140 = !{i1 false, !56, i1 false, i2 1}
!141 = distinct !{!141, !23}
!142 = !{i1 false, !63, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 3.000000e+00, double 1.630000e+02}
!145 = !{!73, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 1.500000e+00}
!147 = !{!34, !146, i1 false, i2 1}
!148 = !{!34, !1, i1 false, i2 1}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
