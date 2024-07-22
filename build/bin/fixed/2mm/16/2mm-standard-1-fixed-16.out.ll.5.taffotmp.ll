; ModuleID = './build/bin/fixed/2mm/16/2mm-standard-1-fixed-16.out.ll.4.taffotmp.ll'
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
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !28
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !31
  %tmp.u3_29fixp = alloca [8 x [10 x i32]], align 4, !taffo.info !33
  %A.u1_31fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !36
  %B.u1_31fixp = alloca [12 x [10 x i32]], align 4, !taffo.info !39
  %C.u1_31fixp = alloca [10 x [14 x i32]], align 4, !taffo.info !41
  %D.u5_27fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !43, !taffo.target !45
  %arraydecay.u1_31fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay8.u1_31fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %arraydecay9.u1_31fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay10.u5_27fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u5_27fixp, i32 0, i32 0, !taffo.info !43, !taffo.target !45
  %arraydecay11.u3_29fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !33
  call void @init_array.2_fixp(i32 8, i32 10, i32 12, i32 14, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u1_31fixp, [10 x i32]* %arraydecay8.u1_31fixp, [14 x i32]* %arraydecay9.u1_31fixp, [14 x i32]* %arraydecay10.u5_27fixp, [10 x i32]* %arraydecay11.u3_29fixp), !taffo.info !46, !taffo.constinfo !47
  call void @timer_start(), !taffo.constinfo !48
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !28
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !31
  %arraydecay12.u3_29fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u3_29fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay13.u1_31fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay14.u1_31fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %arraydecay15.u1_31fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay16.u5_27fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u5_27fixp, i32 0, i32 0, !taffo.info !43, !taffo.target !45
  call void @kernel_2mm.1_fixp(i32 8, i32 10, i32 12, i32 14, i32 %u2_30fixp, i32 %u2_30fixp1, [10 x i32]* %arraydecay12.u3_29fixp, [12 x i32]* %arraydecay13.u1_31fixp, [10 x i32]* %arraydecay14.u1_31fixp, [14 x i32]* %arraydecay15.u1_31fixp, [14 x i32]* %arraydecay16.u5_27fixp), !taffo.info !46, !taffo.constinfo !47
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp18 = icmp slt i32 %j.0, 14, !taffo.info !51
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %arrayidx.u5_27fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u5_27fixp, i32 0, i32 %i.0, !taffo.info !43, !taffo.target !45
  %arrayidx20.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !43, !taffo.target !45
  %u5_27fixp = load i32, i32* %arrayidx20.u5_27fixp, align 4, !taffo.info !43, !taffo.target !45
  %0 = uitofp i32 %u5_27fixp to float, !taffo.info !43, !taffo.target !45
  %1 = fdiv float %0, 0x41A0000000000000, !taffo.info !43, !taffo.target !45
  %arrayidx21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx22 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx22, align 4, !taffo.info !55, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %inc = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond17, !llvm.loop !58

for.end:                                          ; preds = %for.cond17
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !61

for.end25:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !62
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !63 !taffo.funinfo !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !71
  %add = add nsw i32 %mul, %j.0, !taffo.info !71
  %rem = srem i32 %add, 20, !taffo.info !71, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !69
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !73
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !62
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !74

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !75

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [10 x i32]* noundef %tmp.u3_29fixp, [12 x i32]* noundef %A.u1_31fixp, [10 x i32]* noundef %B.u1_31fixp, [14 x i32]* noundef %C.u1_31fixp, [14 x i32]* noundef %D.u5_27fixp) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !69
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !69
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u3_29fixp, i32 %i.0, !taffo.info !33
  %arrayidx4.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !33
  store i32 0, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !81, !taffo.constinfo !82
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !51
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !69
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !36
  %arrayidx9.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx8.u1_31fixp, i32 0, i32 %k.0, !taffo.info !36
  %u1_31fixp = load i32, i32* %arrayidx9.u1_31fixp, align 4, !taffo.info !83
  %0 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !28
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !83
  %2 = ashr i32 %1, 1, !taffo.info !83
  %3 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %2, i32 29), !taffo.info !84
  %mul.u2_30fixp = shl i32 %3, 1, !taffo.info !87
  %arrayidx10.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u1_31fixp, i32 %k.0, !taffo.info !39
  %arrayidx11.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10.u1_31fixp, i32 0, i32 %j.0, !taffo.info !39
  %u1_31fixp2 = load i32, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !88
  %4 = lshr i32 %mul.u2_30fixp, 1, !taffo.info !87
  %5 = lshr i32 %u1_31fixp2, 1, !taffo.info !88
  %6 = ashr i32 %4, 1, !taffo.info !87
  %7 = ashr i32 %5, 2, !taffo.info !88
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 28), !taffo.info !89
  %mul12.u3_29fixp = shl i32 %8, 1, !taffo.info !92
  %arrayidx13.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u3_29fixp, i32 %i.0, !taffo.info !33
  %arrayidx14.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13.u3_29fixp, i32 0, i32 %j.0, !taffo.info !33
  %u3_29fixp = load i32, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !33
  %add.u3_29fixp = add i32 %u3_29fixp, %mul12.u3_29fixp, !taffo.info !93
  store i32 %add.u3_29fixp, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !95
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !96

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !97

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !51
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !69
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !51
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !69
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u5_27fixp, i32 %i.1, !taffo.info !43
  %arrayidx28.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx27.u5_27fixp, i32 0, i32 %j.1, !taffo.info !43
  %u5_27fixp = load i32, i32* %arrayidx28.u5_27fixp, align 4, !taffo.info !43
  %9 = lshr i32 %u5_27fixp, 1, !taffo.info !43
  %10 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !31
  %11 = ashr i32 %10, 3, !taffo.info !31
  %12 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %11, i32 26), !taffo.info !99
  %mul29.u5_27fixp = shl i32 %12, 1, !taffo.info !102
  store i32 %mul29.u5_27fixp, i32* %arrayidx28.u5_27fixp, align 4, !taffo.info !103
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !51
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !69
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u3_29fixp, i32 %i.1, !taffo.info !33
  %arrayidx34.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33.u3_29fixp, i32 0, i32 %k.1, !taffo.info !33
  %u3_29fixp1 = load i32, i32* %arrayidx34.u3_29fixp, align 4, !taffo.info !33
  %arrayidx35.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %k.1, !taffo.info !41
  %arrayidx36.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx35.u1_31fixp, i32 0, i32 %j.1, !taffo.info !41
  %u1_31fixp3 = load i32, i32* %arrayidx36.u1_31fixp, align 4, !taffo.info !104
  %13 = lshr i32 %u3_29fixp1, 1, !taffo.info !33
  %14 = lshr i32 %u1_31fixp3, 1, !taffo.info !104
  %15 = ashr i32 %13, 2, !taffo.info !33
  %16 = ashr i32 %14, 4, !taffo.info !104
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 26), !taffo.info !105
  %mul37.u5_27fixp = shl i32 %17, 1, !taffo.info !107
  %arrayidx38.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u5_27fixp, i32 %i.1, !taffo.info !43
  %arrayidx39.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx38.u5_27fixp, i32 0, i32 %j.1, !taffo.info !43
  %u5_27fixp4 = load i32, i32* %arrayidx39.u5_27fixp, align 4, !taffo.info !43
  %add40.u5_27fixp = add i32 %u5_27fixp4, %mul37.u5_27fixp, !taffo.info !108
  store i32 %add40.u5_27fixp, i32* %arrayidx39.u5_27fixp, align 4, !taffo.info !55
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !110

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !111

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !112

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %A.u1_31fixp, [10 x i32]* noundef %B.u1_31fixp, [14 x i32]* noundef %C.u1_31fixp, [14 x i32]* noundef %D.u5_27fixp, [10 x i32]* noundef %tmp.u3_29fixp) #0 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !115 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !46, !taffo.constinfo !116
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !103, !taffo.constinfo !118
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !121, !taffo.initweight !123
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !121, !taffo.initweight !126

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !127, !taffo.initweight !123
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !127, !taffo.initweight !126

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !129, !taffo.initweight !125
  %add = add nsw i32 %mul, 1, !taffo.info !131, !taffo.initweight !126, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !133, !taffo.initweight !135
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !136
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !137
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !136
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !137
  %2 = ashr i32 %0, 1, !taffo.info !136
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !139
  %div.u3_29fixp = shl i32 %3, 2, !taffo.info !141
  %arrayidx.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !142
  %arrayidx7.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !142
  %4 = shl i32 %div.u3_29fixp, 2, !taffo.info !141
  store i32 %4, i32* %arrayidx7.u1_31fixp, align 4, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !145

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !121, !taffo.initweight !123
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !121, !taffo.initweight !126

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !127, !taffo.initweight !123
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !127, !taffo.initweight !126

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !149, !taffo.initweight !125
  %rem21 = srem i32 %mul20, %nj, !taffo.info !151, !taffo.initweight !126
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !152
  %conv23.u4_28fixp = shl i32 %nj, 28, !taffo.info !153
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !152
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !153
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !154
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !39
  %arrayidx25.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u1_31fixp, i32 %i.1, !taffo.info !155
  %arrayidx26.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.u1_31fixp, i32 0, i32 %j.1, !taffo.info !155
  store i32 %div24.u1_31fixp, i32* %arrayidx26.u1_31fixp, align 4, !taffo.info !81
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !156

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !157

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !121, !taffo.initweight !123
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !121, !taffo.initweight !126

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !127, !taffo.initweight !123
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !127, !taffo.initweight !126

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !158, !taffo.initweight !125, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !160, !taffo.initweight !125
  %add43 = add nsw i32 %mul42, 1, !taffo.info !162, !taffo.initweight !126, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !164, !taffo.initweight !135
  %conv45.u4_28fixp = shl i32 %rem44, 28, !taffo.info !166
  %conv46.u4_28fixp = shl i32 %nl, 28, !taffo.info !167
  %8 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !166
  %9 = lshr i32 %conv46.u4_28fixp, 1, !taffo.info !167
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 27), !taffo.info !168
  %div47.u1_31fixp = shl i32 %10, 4, !taffo.info !170
  %arrayidx48.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %i.2, !taffo.info !171
  %arrayidx49.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx48.u1_31fixp, i32 0, i32 %j.2, !taffo.info !171
  store i32 %div47.u1_31fixp, i32* %arrayidx49.u1_31fixp, align 4, !taffo.info !81
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !172

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !173

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !121, !taffo.initweight !123
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !121, !taffo.initweight !126

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !127, !taffo.initweight !123
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !127, !taffo.initweight !126

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !174, !taffo.initweight !125, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !176, !taffo.initweight !125
  %rem66 = srem i32 %mul65, %nk, !taffo.info !178, !taffo.initweight !126
  %conv67.u4_28fixp = shl i32 %rem66, 28, !taffo.info !180
  %conv68.u4_28fixp = shl i32 %nk, 28, !taffo.info !181
  %11 = lshr i32 %conv67.u4_28fixp, 1, !taffo.info !180
  %12 = lshr i32 %conv68.u4_28fixp, 1, !taffo.info !181
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 27), !taffo.info !182
  %div69.u1_31fixp = shl i32 %13, 4, !taffo.info !184
  %arrayidx70.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u5_27fixp, i32 %i.3, !taffo.info !185
  %arrayidx71.u5_27fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx70.u5_27fixp, i32 0, i32 %j.3, !taffo.info !185
  %14 = lshr i32 %div69.u1_31fixp, 4, !taffo.info !184
  store i32 %14, i32* %arrayidx71.u5_27fixp, align 4, !taffo.info !81
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !186

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !187

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !121, !taffo.initweight !123
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !121, !taffo.initweight !126

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !127, !taffo.initweight !123
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !124, !taffo.initweight !125
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !127, !taffo.initweight !126

for.body85:                                       ; preds = %for.cond82
  %arrayidx86.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u3_29fixp, i32 %i.4, !taffo.info !188
  %arrayidx87.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86.u3_29fixp, i32 0, i32 %j.4, !taffo.info !188
  store i32 0, i32* %arrayidx87.u3_29fixp, align 4, !taffo.info !81, !taffo.constinfo !82
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !143, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !189

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !146, !taffo.initweight !125, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !190

for.end93:                                        ; preds = %for.cond78
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
!31 = !{!29, !32, i1 false, i2 -1}
!32 = !{double 1.200000e+00, double 1.200000e+00}
!33 = !{!34, !35, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 29}
!35 = !{double 0.000000e+00, double 4.612500e+00}
!36 = !{!37, !38, i1 false, i2 -1}
!37 = !{!"fixp", i32 32, i32 31}
!38 = !{double 0.000000e+00, double 8.750000e-01}
!39 = !{!37, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 9.000000e-01}
!41 = !{!37, !42, i1 false, i2 -1}
!42 = !{double 0.000000e+00, double 9.285710e-01}
!43 = !{!44, !1, i1 false, i2 -1}
!44 = !{!"fixp", i32 32, i32 27}
!45 = !{!"D"}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 9.000000e+00}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+00}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.350000e+02}
!55 = !{i1 false, !1, i1 false, i2 -1}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.350000e+02}
!58 = distinct !{!58, !23}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 9.000000e+00}
!61 = distinct !{!61, !23}
!62 = !{i1 false, i1 false, i1 false, i1 false}
!63 = !{i32 -1, i32 -1, i32 -1}
!64 = !{i32 1, !65, i32 1, !67, i32 1, !0}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 8.000000e+00, double 8.000000e+00}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.400000e+01, double 1.400000e+01}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 1.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 0.000000e+00}
!73 = !{i1 false, i1 false, i1 false}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!77 = !{i32 1, !65, i32 1, !16, i32 1, !78, i32 1, !67, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39, i32 1, !41, i32 1, !43}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.200000e+01, double 1.200000e+01}
!80 = distinct !{null}
!81 = !{i1 false, i1 false, i1 false, i2 1}
!82 = !{!71, i1 false}
!83 = !{!29, !38, i1 false, i2 -1}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 -32, i32 29}
!86 = !{double 0.000000e+00, double 1.312500e+00}
!87 = !{!29, !86, i1 false, i2 -1}
!88 = !{!29, !40, i1 false, i2 -1}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 28}
!91 = !{double 0.000000e+00, double 0x3FF2E66666666667}
!92 = !{!34, !91, i1 false, i2 -1}
!93 = !{!34, !94, i1 false, i2 -1}
!94 = !{double 0.000000e+00, double 5.793750e+00}
!95 = !{i1 false, !35, i1 false, i2 -1}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{!100, !101, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 26}
!101 = !{double 0.000000e+00, double 2.301750e+01}
!102 = !{!44, !101, i1 false, i2 -1}
!103 = !{i1 false, !32, i1 false, i2 -1}
!104 = !{!34, !42, i1 false, i2 -1}
!105 = !{!100, !106, i1 false, i2 -1}
!106 = !{double 0.000000e+00, double 0x401121D39898E89A}
!107 = !{!44, !106, i1 false, i2 -1}
!108 = !{!44, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 0x403776DB4C8CA08C}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!114 = !{i32 1, !65, i32 1, !16, i32 1, !78, i32 1, !67, i32 1, !28, i32 1, !31, i32 1, !36, i32 1, !39, i32 1, !41, i32 1, !43, i32 1, !33}
!115 = distinct !{null}
!116 = !{!117, i1 false}
!117 = !{i1 false, !30, i1 false, i2 0}
!118 = !{!119, i1 false}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 1.200000e+01}
!123 = !{i32 0}
!124 = !{i1 false, !52, i1 false, i2 -1}
!125 = !{i32 2}
!126 = !{i32 3}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 1.400000e+01}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 1.680000e+02}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double 1.000000e+00, double 1.690000e+02}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double 0.000000e+00, double 7.000000e+00}
!135 = !{i32 4}
!136 = !{!34, !134, i1 false, i2 -1}
!137 = !{!138, !66, i1 false, i2 1}
!138 = !{!"fixp", i32 32, i32 28}
!139 = !{!140, !38, i1 false, i2 -1}
!140 = !{!"fixp", i32 -32, i32 27}
!141 = !{!34, !38, i1 false, i2 -1}
!142 = !{!37, !38, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 -1}
!144 = !{double 1.000000e+00, double 1.500000e+01}
!145 = distinct !{!145, !23}
!146 = !{i1 false, !147, i1 false, i2 -1}
!147 = !{double 1.000000e+00, double 1.300000e+01}
!148 = distinct !{!148, !23}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 0.000000e+00, double 1.800000e+02}
!151 = !{i1 false, !50, i1 false, i2 -1}
!152 = !{!138, !50, i1 false, i2 -1}
!153 = !{!138, !17, i1 false, i2 1}
!154 = !{!140, !40, i1 false, i2 -1}
!155 = !{!37, !40, i1 false, i2 1}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = !{i1 false, !159, i1 false, i2 -1}
!159 = !{double 3.000000e+00, double 1.700000e+01}
!160 = !{i1 false, !161, i1 false, i2 -1}
!161 = !{double 0.000000e+00, double 2.040000e+02}
!162 = !{i1 false, !163, i1 false, i2 -1}
!163 = !{double 1.000000e+00, double 2.050000e+02}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 0.000000e+00, double 1.300000e+01}
!166 = !{!138, !165, i1 false, i2 -1}
!167 = !{!138, !68, i1 false, i2 1}
!168 = !{!140, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!170 = !{!37, !169, i1 false, i2 -1}
!171 = !{!37, !42, i1 false, i2 1}
!172 = distinct !{!172, !23}
!173 = distinct !{!173, !23}
!174 = !{i1 false, !175, i1 false, i2 -1}
!175 = !{double 2.000000e+00, double 1.600000e+01}
!176 = !{i1 false, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 1.920000e+02}
!178 = !{i1 false, !179, i1 false, i2 -1}
!179 = !{double 0.000000e+00, double 1.100000e+01}
!180 = !{!138, !179, i1 false, i2 -1}
!181 = !{!138, !79, i1 false, i2 1}
!182 = !{!140, !183, i1 false, i2 -1}
!183 = !{double 0.000000e+00, double 0x3FED555555555555}
!184 = !{!37, !183, i1 false, i2 -1}
!185 = !{!44, !1, i1 false, i2 1}
!186 = distinct !{!186, !23}
!187 = distinct !{!187, !23}
!188 = !{!34, !35, i1 false, i2 1}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23}
