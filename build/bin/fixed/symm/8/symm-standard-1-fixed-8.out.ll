; ModuleID = './build/bin/fixed/symm/8/symm-standard-1-fixed-8.out.ll.4.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C.u6_26fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !33, !taffo.target !35
  %A.s11_21fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !36
  %B.u2_30fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !39
  %arraydecay.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay6.s11_21fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s11_21fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay7.u2_30fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !39
  call void @init_array.2_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u6_26fixp, [10 x i32]* %arraydecay6.s11_21fixp, [16 x i32]* %arraydecay7.u2_30fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_start(), !taffo.constinfo !43
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !44
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !31
  %arraydecay8.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay9.s11_21fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.s11_21fixp, i32 0, i32 0, !taffo.info !36
  %arraydecay10.u2_30fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !39
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !44
  call void @kernel_symm.1_fixp(i32 10, i32 16, i32 %0, i32 %u2_30fixp1, [16 x i32]* %arraydecay8.u6_26fixp, [10 x i32]* %arraydecay9.s11_21fixp, [16 x i32]* %arraydecay10.u2_30fixp), !taffo.info !41, !taffo.constinfo !42
  call void @timer_stop(), !taffo.constinfo !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !46
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !48
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !50
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !48
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx.u6_26fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %C.u6_26fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %arrayidx14.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u6_26fixp, i32 0, i32 %j.0, !taffo.info !33, !taffo.target !35
  %u6_26fixp = load i32, i32* %arrayidx14.u6_26fixp, align 4, !taffo.info !33, !taffo.target !35
  %1 = uitofp i32 %u6_26fixp to float, !taffo.info !33, !taffo.target !35
  %2 = fdiv float %1, 0x4190000000000000, !taffo.info !33, !taffo.target !35
  %arrayidx15 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx16, align 4, !taffo.info !52, !taffo.target !35
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !55

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !58

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !60 !taffo.funinfo !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !48
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !48
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !66
  %add = add nsw i32 %mul, %j.0, !taffo.info !66
  %rem = srem i32 %add, 20, !taffo.info !66, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !64
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !68
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !59
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !69

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.1_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u3_29fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u6_26fixp, [10 x i32]* noundef %A.s11_21fixp, [16 x i32]* noundef %B.u2_30fixp) #0 !taffo.initweight !71 !taffo.funinfo !72 !taffo.sourceFunction !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !48
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !48
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !64
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  %0 = lshr i32 0, 13
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !48
  %temp2.0.s13_19fixp = phi i32 [ %0, %for.body3 ], [ %add18.s13_19fixp, %for.inc ], !taffo.info !74
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !66
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !39
  %arrayidx7.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !39
  %u2_30fixp = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !77
  %1 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !44
  %2 = lshr i32 %u2_30fixp, 1, !taffo.info !77
  %3 = ashr i32 %2, 1, !taffo.info !77
  %4 = call i32 @llvm.smul.fix.i32(i32 %1, i32 %3, i32 28), !taffo.info !78
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !81
  %arrayidx8.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s11_21fixp, i32 %i.0, !taffo.info !36
  %arrayidx9.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.s11_21fixp, i32 0, i32 %k.0, !taffo.info !36
  %s11_21fixp = load i32, i32* %arrayidx9.s11_21fixp, align 4, !taffo.info !82
  %5 = lshr i32 %mul.u3_29fixp, 1, !taffo.info !81
  %6 = ashr i32 %5, 9, !taffo.info !81
  %7 = ashr i32 %s11_21fixp, 2, !taffo.info !82
  %mul10.s13_19fixp = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 19), !taffo.info !83
  %arrayidx11.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %k.0, !taffo.info !33
  %arrayidx12.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx11.u6_26fixp, i32 0, i32 %j.0, !taffo.info !33
  %u6_26fixp = load i32, i32* %arrayidx12.u6_26fixp, align 4, !taffo.info !33
  %8 = lshr i32 %u6_26fixp, 7, !taffo.info !33
  %add.s13_19fixp = add i32 %8, %mul10.s13_19fixp, !taffo.info !85
  %9 = shl i32 %add.s13_19fixp, 7, !taffo.info !85
  store i32 %9, i32* %arrayidx12.u6_26fixp, align 4, !taffo.info !52
  %arrayidx13.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %k.0, !taffo.info !39
  %arrayidx14.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u2_30fixp, i32 0, i32 %j.0, !taffo.info !39
  %u2_30fixp4 = load i32, i32* %arrayidx14.u2_30fixp, align 4, !taffo.info !39
  %arrayidx15.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s11_21fixp, i32 %i.0, !taffo.info !36
  %arrayidx16.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15.s11_21fixp, i32 0, i32 %k.0, !taffo.info !36
  %s11_21fixp2 = load i32, i32* %arrayidx16.s11_21fixp, align 4, !taffo.info !82
  %10 = lshr i32 %u2_30fixp4, 1, !taffo.info !39
  %11 = ashr i32 %10, 10, !taffo.info !39
  %12 = ashr i32 %s11_21fixp2, 2, !taffo.info !82
  %mul17.s13_19fixp = call i32 @llvm.smul.fix.i32(i32 %11, i32 %12, i32 19), !taffo.info !87
  %add18.s13_19fixp = add i32 %temp2.0.s13_19fixp, %mul17.s13_19fixp, !taffo.info !87
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !88

for.end:                                          ; preds = %for.cond4
  %arrayidx19.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.0, !taffo.info !33
  %arrayidx20.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx19.u6_26fixp, i32 0, i32 %j.0, !taffo.info !33
  %u6_26fixp1 = load i32, i32* %arrayidx20.u6_26fixp, align 4, !taffo.info !33
  %13 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !31
  %14 = lshr i32 %u6_26fixp1, 1, !taffo.info !33
  %15 = ashr i32 %13, 4, !taffo.info !31
  %16 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %14, i32 25), !taffo.info !89
  %mul21.u6_26fixp = shl i32 %16, 1, !taffo.info !92
  %arrayidx22.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !39
  %arrayidx23.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u2_30fixp, i32 0, i32 %j.0, !taffo.info !39
  %u2_30fixp5 = load i32, i32* %arrayidx23.u2_30fixp, align 4, !taffo.info !77
  %17 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !44
  %18 = lshr i32 %u2_30fixp5, 1, !taffo.info !77
  %19 = ashr i32 %18, 1, !taffo.info !77
  %20 = call i32 @llvm.smul.fix.i32(i32 %17, i32 %19, i32 28), !taffo.info !78
  %mul24.u3_29fixp = shl i32 %20, 1, !taffo.info !81
  %arrayidx25.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s11_21fixp, i32 %i.0, !taffo.info !36
  %arrayidx26.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.s11_21fixp, i32 0, i32 %i.0, !taffo.info !36
  %s11_21fixp3 = load i32, i32* %arrayidx26.s11_21fixp, align 4, !taffo.info !82
  %21 = lshr i32 %mul24.u3_29fixp, 1, !taffo.info !81
  %22 = ashr i32 %21, 9, !taffo.info !81
  %23 = ashr i32 %s11_21fixp3, 2, !taffo.info !82
  %mul27.s13_19fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 19), !taffo.info !83
  %24 = lshr i32 %mul21.u6_26fixp, 8, !taffo.info !92
  %25 = ashr i32 %mul27.s13_19fixp, 1, !taffo.info !83
  %add28.s14_18fixp = add i32 %24, %25, !taffo.info !93
  %26 = lshr i32 %alpha.u3_29fixp, 1, !taffo.info !44
  %27 = ashr i32 %26, 10, !taffo.info !44
  %28 = ashr i32 %temp2.0.s13_19fixp, 1, !taffo.info !74
  %mul29.s14_18fixp = call i32 @llvm.smul.fix.i32(i32 %27, i32 %28, i32 18), !taffo.info !96
  %add30.s14_18fixp = add i32 %add28.s14_18fixp, %mul29.s14_18fixp, !taffo.info !97
  %arrayidx31.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.0, !taffo.info !33
  %arrayidx32.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx31.u6_26fixp, i32 0, i32 %j.0, !taffo.info !33
  %29 = shl i32 %add30.s14_18fixp, 8, !taffo.info !97
  store i32 %29, i32* %arrayidx32.u6_26fixp, align 4, !taffo.info !41
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !99

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !100

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u6_26fixp, [10 x i32]* noundef %A.s11_21fixp, [16 x i32]* noundef %B.u2_30fixp) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !103 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !41, !taffo.constinfo !104
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !106, !taffo.constinfo !107
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !110, !taffo.initweight !111
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !112, !taffo.initweight !113
  br i1 %cmp, label %for.body, label %for.end17, !taffo.info !114, !taffo.initweight !115

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !111
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !112, !taffo.initweight !113
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !118, !taffo.initweight !115

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.info !120, !taffo.initweight !113
  %rem = srem i32 %add, 100, !taffo.info !120, !taffo.initweight !115, !taffo.constinfo !21
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !122, !taffo.constinfo !21
  %conv6.u4_28fixp = shl i32 %m, 28, !taffo.info !124
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !122, !taffo.constinfo !21
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !124
  %2 = ashr i32 %1, 1, !taffo.info !124
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %2, i32 26), !taffo.info !126
  %div.u4_28fixp = shl i32 %3, 2, !taffo.info !129
  %arrayidx.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u6_26fixp, i32 %i.0, !taffo.info !130
  %arrayidx7.u6_26fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u6_26fixp, i32 0, i32 %j.0, !taffo.info !130
  %4 = lshr i32 %div.u4_28fixp, 2, !taffo.info !129
  store i32 %4, i32* %arrayidx7.u6_26fixp, align 4, !taffo.info !131
  %add8 = add nsw i32 %n, %i.0, !taffo.info !132, !taffo.initweight !113
  %sub = sub nsw i32 %add8, %j.0, !taffo.info !120, !taffo.initweight !113
  %rem9 = srem i32 %sub, 100, !taffo.info !120, !taffo.initweight !115, !taffo.constinfo !21
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !122, !taffo.constinfo !21
  %conv11.u4_28fixp = shl i32 %m, 28, !taffo.info !124
  %5 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !122, !taffo.constinfo !21
  %6 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !124
  %7 = ashr i32 %6, 1, !taffo.info !124
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %7, i32 26), !taffo.info !126
  %div12.u4_28fixp = shl i32 %8, 2, !taffo.info !129
  %arrayidx13.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u2_30fixp, i32 %i.0, !taffo.info !134
  %arrayidx14.u2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u2_30fixp, i32 0, i32 %j.0, !taffo.info !134
  %9 = shl i32 %div12.u4_28fixp, 2, !taffo.info !129
  store i32 %9, i32* %arrayidx14.u2_30fixp, align 4, !taffo.info !131
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !135, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !137

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !138, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !139

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.info !110, !taffo.initweight !111
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.info !112, !taffo.initweight !113
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.info !114, !taffo.initweight !115

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !116, !taffo.initweight !111
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.info !112, !taffo.initweight !113
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.info !114, !taffo.initweight !115

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.info !120, !taffo.initweight !113
  %rem27 = srem i32 %add26, 100, !taffo.info !120, !taffo.initweight !115, !taffo.constinfo !21
  %conv28.u5_27fixp = shl i32 %rem27, 27, !taffo.info !122, !taffo.constinfo !21
  %conv29.u4_28fixp = shl i32 %m, 28, !taffo.info !124
  %10 = lshr i32 %conv28.u5_27fixp, 1, !taffo.info !122, !taffo.constinfo !21
  %11 = lshr i32 %conv29.u4_28fixp, 1, !taffo.info !124
  %12 = ashr i32 %11, 1, !taffo.info !124
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %10, i32 %12, i32 26), !taffo.info !126
  %div30.u4_28fixp = shl i32 %13, 2, !taffo.info !129
  %arrayidx31.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s11_21fixp, i32 %i.1, !taffo.info !140
  %arrayidx32.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx31.s11_21fixp, i32 0, i32 %j.1, !taffo.info !140
  %14 = lshr i32 %div30.u4_28fixp, 7, !taffo.info !129
  store i32 %14, i32* %arrayidx32.s11_21fixp, align 4, !taffo.info !131
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !135, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !141

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.info !138, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !116, !taffo.initweight !111
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.info !112, !taffo.initweight !113
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.info !118, !taffo.initweight !115

for.body40:                                       ; preds = %for.cond37
  %arrayidx41.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.s11_21fixp, i32 %i.1, !taffo.info !140
  %arrayidx42.s11_21fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx41.s11_21fixp, i32 0, i32 %j.2, !taffo.info !140
  store i32 -2095054848, i32* %arrayidx42.s11_21fixp, align 4, !taffo.info !131, !taffo.constinfo !142
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.info !135, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !145

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.info !138, !taffo.initweight !113, !taffo.constinfo !21
  br label %for.cond18, !llvm.loop !146

for.end48:                                        ; preds = %for.cond18
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
!1 = !{double 0.000000e+00, double 0x4045EA3D816ACEAB}
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
!34 = !{!"fixp", i32 32, i32 26}
!35 = !{!"C"}
!36 = !{!37, !38, i1 false, i2 -1}
!37 = !{!"fixp", i32 -32, i32 21}
!38 = !{double -9.990000e+02, double 1.800000e+00}
!39 = !{!29, !40, i1 false, i2 -1}
!40 = !{double 1.000000e-01, double 2.500000e+00}
!41 = !{i1 false, !30, i1 false, i2 -1}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = !{i1 false}
!44 = !{!45, !30, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 29}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 1.100000e+01}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 1.000000e+00}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 1.870000e+02}
!52 = !{i1 false, !1, i1 false, i2 -1}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 1.870000e+02}
!55 = distinct !{!55, !23}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.100000e+01}
!58 = distinct !{!58, !23}
!59 = !{i1 false, i1 false, i1 false, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1}
!61 = !{i32 1, !16, i32 1, !62, i32 1, !0}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.600000e+01, double 1.600000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 0.000000e+00}
!68 = !{i1 false, i1 false, i1 false}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!72 = !{i32 1, !16, i32 1, !62, i32 1, !44, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39}
!73 = distinct !{null}
!74 = !{!75, !76, i1 false, i2 1}
!75 = !{!"fixp", i32 -32, i32 19}
!76 = !{double -2.497500e+03, double 4.500000e+00}
!77 = !{!45, !40, i1 false, i2 -1}
!78 = !{!79, !80, i1 false, i2 -1}
!79 = !{!"fixp", i32 -32, i32 28}
!80 = !{double 0x3FC3333333333334, double 3.750000e+00}
!81 = !{!45, !80, i1 false, i2 -1}
!82 = !{!75, !38, i1 false, i2 -1}
!83 = !{!75, !84, i1 false, i2 -1}
!84 = !{double -3.746250e+03, double 6.750000e+00}
!85 = !{!75, !86, i1 false, i2 -1}
!86 = !{double -3.746250e+03, double 0x40494A3D816ACEAB}
!87 = !{!75, !76, i1 false, i2 -1}
!88 = distinct !{!88, !23}
!89 = !{!90, !91, i1 false, i2 -1}
!90 = !{!"fixp", i32 -32, i32 25}
!91 = !{double 0.000000e+00, double 0x404A4C49CE802B33}
!92 = !{!34, !91, i1 false, i2 -1}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -32, i32 18}
!95 = !{double -3.746250e+03, double 0x404DAC49CE802B33}
!96 = !{!94, !84, i1 false, i2 -1}
!97 = !{!94, !98, i1 false, i2 -1}
!98 = !{double -7.492500e+03, double 0x40508624E740159A}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23}
!101 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!102 = !{i32 1, !16, i32 1, !62, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !36, i32 1, !39}
!103 = distinct !{null}
!104 = !{!105, i1 false}
!105 = !{i1 false, !30, i1 false, i2 0}
!106 = !{i1 false, !32, i1 false, i2 -1}
!107 = !{!108, i1 false}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!110 = !{i1 false, !47, i1 false, i2 1}
!111 = !{i32 0}
!112 = !{i1 false, !49, i1 false, i2 1}
!113 = !{i32 2}
!114 = !{i1 false, !3, i1 false, i2 1}
!115 = !{i32 3}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 0.000000e+00, double 1.700000e+01}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 1.600000e+01}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 0.000000e+00, double 2.600000e+01}
!122 = !{!123, !121, i1 false, i2 1}
!123 = !{!"fixp", i32 32, i32 27}
!124 = !{!125, !17, i1 false, i2 1}
!125 = !{!"fixp", i32 32, i32 28}
!126 = !{!127, !128, i1 false, i2 1}
!127 = !{!"fixp", i32 -32, i32 26}
!128 = !{double 0.000000e+00, double 2.600000e+00}
!129 = !{!125, !128, i1 false, i2 1}
!130 = !{!34, !1, i1 false, i2 1}
!131 = !{i1 false, i1 false, i1 false, i2 1}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 1.600000e+01, double 2.600000e+01}
!134 = !{!29, !40, i1 false, i2 1}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 1.000000e+00, double 1.700000e+01}
!137 = distinct !{!137, !23}
!138 = !{i1 false, !57, i1 false, i2 1}
!139 = distinct !{!139, !23}
!140 = !{!37, !38, i1 false, i2 1}
!141 = distinct !{!141, !23}
!142 = !{!143, i1 false}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double -9.990000e+02, double -9.990000e+02}
!145 = distinct !{!145, !23}
!146 = distinct !{!146, !23}
