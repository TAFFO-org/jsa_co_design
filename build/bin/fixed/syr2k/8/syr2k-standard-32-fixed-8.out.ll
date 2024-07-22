; ModuleID = './build/bin/fixed/syr2k/8/syr2k-standard-32-fixed-8.out.ll.4.taffotmp.ll'
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.equivalentChild !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !34

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !37

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !38

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !39

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !41 {
entry:
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !42
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !45
  %C.u13_19fixp = alloca [16 x [16 x i32]], align 4, !taffo.info !47, !taffo.target !49
  %A.u5_27fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !50
  %B.u5_27fixp = alloca [16 x [10 x i32]], align 4, !taffo.info !53
  %arraydecay.u13_19fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u13_19fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay6.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay7.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.4_fixp(i32 16, i32 10, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [16 x i32]* %arraydecay.u13_19fixp, [10 x i32]* %arraydecay6.u5_27fixp, [10 x i32]* %arraydecay7.u5_27fixp), !taffo.info !55, !taffo.constinfo !56
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 32), !taffo.info !55, !taffo.constinfo !57
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 32), !taffo.info !58, !taffo.constinfo !57
  %arraydecay8.u13_19fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u13_19fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %u13_19fixp = bitcast [16 x i32]* %arraydecay8.u13_19fixp to i32*, !taffo.info !47, !taffo.target !49
  call void @scale_2d.5_fixp(i32 16, i32 16, i32* %u13_19fixp, i32 32), !taffo.info !59, !taffo.constinfo !60, !taffo.target !49
  %arraydecay9.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %u5_27fixp2 = bitcast [10 x i32]* %arraydecay9.u5_27fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u5_27fixp2, i32 32), !taffo.info !61, !taffo.constinfo !60
  %arraydecay10.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !53
  %u5_27fixp = bitcast [10 x i32]* %arraydecay10.u5_27fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 16, i32 10, i32* %u5_27fixp, i32 32), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay11.u13_19fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u13_19fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay12.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay13.u5_27fixp = getelementptr inbounds [16 x [10 x i32]], [16 x [10 x i32]]* %B.u5_27fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_syr2k.3_fixp(i32 16, i32 10, i32 %u2_30fixp, i32 %u2_30fixp1, [16 x i32]* %arraydecay11.u13_19fixp, [10 x i32]* %arraydecay12.u5_27fixp, [10 x i32]* %arraydecay13.u5_27fixp), !taffo.info !55, !taffo.constinfo !56
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !66
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx.u13_19fixp = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %C.u13_19fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %arrayidx17.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u13_19fixp, i32 0, i32 %j.0, !taffo.info !47, !taffo.target !49
  %u13_19fixp3 = load i32, i32* %arrayidx17.u13_19fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u13_19fixp3 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 5.242880e+05, !taffo.info !47, !taffo.target !49
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !59, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !70, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !72

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !75

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !57
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !81
  %add = add nsw i32 %mul, %j.0, !taffo.info !81
  %rem = srem i32 %add, 20, !taffo.info !81, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !79
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !57
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !83
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !84

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !85

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !90 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3_fixp(i32 noundef %n, i32 noundef %m, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u13_19fixp, [10 x i32]* noundef %A.u5_27fixp, [10 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !91 !taffo.funinfo !92 !taffo.sourceFunction !93 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !66
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u13_19fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u13_19fixp, i32 0, i32 %j.0, !taffo.info !47
  %u13_19fixp = load i32, i32* %arrayidx4.u13_19fixp, align 4, !taffo.info !94
  %0 = lshr i32 %u13_19fixp, 1, !taffo.info !94
  %1 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %2 = ashr i32 %0, 1, !taffo.info !94
  %3 = ashr i32 %1, 12, !taffo.info !45
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 17), !taffo.info !96
  %mul.u14_18fixp = shl i32 %4, 1, !taffo.info !99
  %5 = shl i32 %mul.u14_18fixp, 1, !taffo.info !99
  store i32 %5, i32* %arrayidx4.u13_19fixp, align 4, !taffo.info !58
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !100

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !66
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !66
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !66
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %j.1, !taffo.info !50
  %arrayidx12.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u5_27fixp, i32 0, i32 %k.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !101
  %6 = lshr i32 %u5_27fixp, 1, !taffo.info !101
  %7 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %8 = ashr i32 %6, 1, !taffo.info !101
  %9 = ashr i32 %7, 4, !taffo.info !42
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 25), !taffo.info !103
  %mul13.u6_26fixp = shl i32 %10, 1, !taffo.info !106
  %arrayidx14.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !53
  %arrayidx15.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u5_27fixp, i32 0, i32 %k.0, !taffo.info !53
  %u5_27fixp3 = load i32, i32* %arrayidx15.u5_27fixp, align 4, !taffo.info !53
  %11 = lshr i32 %mul13.u6_26fixp, 1, !taffo.info !106
  %12 = lshr i32 %u5_27fixp3, 1, !taffo.info !53
  %13 = ashr i32 %11, 6, !taffo.info !106
  %14 = ashr i32 %12, 7, !taffo.info !53
  %15 = call i32 @llvm.smul.fix.i32(i32 %13, i32 %14, i32 19), !taffo.info !107
  %mul16.u12_20fixp = shl i32 %15, 1, !taffo.info !110
  %arrayidx17.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u5_27fixp, i32 %j.1, !taffo.info !53
  %arrayidx18.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx17.u5_27fixp, i32 0, i32 %k.0, !taffo.info !53
  %u5_27fixp4 = load i32, i32* %arrayidx18.u5_27fixp, align 4, !taffo.info !112
  %16 = lshr i32 %u5_27fixp4, 1, !taffo.info !112
  %17 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %18 = ashr i32 %16, 1, !taffo.info !112
  %19 = ashr i32 %17, 4, !taffo.info !42
  %20 = call i32 @llvm.smul.fix.i32(i32 %18, i32 %19, i32 25), !taffo.info !113
  %mul19.u6_26fixp = shl i32 %20, 1, !taffo.info !115
  %arrayidx20.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !50
  %arrayidx21.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx20.u5_27fixp, i32 0, i32 %k.0, !taffo.info !50
  %u5_27fixp2 = load i32, i32* %arrayidx21.u5_27fixp, align 4, !taffo.info !50
  %21 = lshr i32 %mul19.u6_26fixp, 1, !taffo.info !115
  %22 = lshr i32 %u5_27fixp2, 1, !taffo.info !50
  %23 = ashr i32 %21, 6, !taffo.info !115
  %24 = ashr i32 %22, 7, !taffo.info !50
  %25 = call i32 @llvm.smul.fix.i32(i32 %23, i32 %24, i32 19), !taffo.info !107
  %mul22.u12_20fixp = shl i32 %25, 1, !taffo.info !110
  %26 = lshr i32 %mul16.u12_20fixp, 2, !taffo.info !110
  %27 = lshr i32 %mul22.u12_20fixp, 2, !taffo.info !110
  %add.u14_18fixp = add i32 %26, %27, !taffo.info !116
  %arrayidx23.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u13_19fixp, i32 %i.0, !taffo.info !47
  %arrayidx24.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx23.u13_19fixp, i32 0, i32 %j.1, !taffo.info !47
  %u13_19fixp1 = load i32, i32* %arrayidx24.u13_19fixp, align 4, !taffo.info !94
  %28 = lshr i32 %u13_19fixp1, 1, !taffo.info !94
  %add25.u14_18fixp = add i32 %28, %add.u14_18fixp, !taffo.info !118
  %29 = shl i32 %add25.u14_18fixp, 1, !taffo.info !118
  store i32 %29, i32* %arrayidx24.u13_19fixp, align 4, !taffo.info !59
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !120

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !121

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !122

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [16 x i32]* noundef %C.u13_19fixp, [10 x i32]* noundef %A.u5_27fixp, [10 x i32]* noundef %B.u5_27fixp) #0 !taffo.initweight !123 !taffo.funinfo !92 !taffo.sourceFunction !124 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !55, !taffo.constinfo !125
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !58, !taffo.constinfo !127
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !130, !taffo.initweight !131
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !132, !taffo.initweight !133
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !134, !taffo.initweight !136

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !137, !taffo.initweight !131
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !132, !taffo.initweight !133
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !139, !taffo.initweight !136

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !140, !taffo.initweight !133
  %add = add nsw i32 %mul, 1, !taffo.info !142, !taffo.initweight !136, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !144, !taffo.initweight !146
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !147
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !149
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !147
  %1 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !149
  %2 = ashr i32 %0, 1, !taffo.info !147
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !150
  %div.u1_31fixp = shl i32 %3, 5, !taffo.info !153
  %arrayidx.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !155
  %arrayidx7.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !155
  %4 = lshr i32 %div.u1_31fixp, 4, !taffo.info !153
  store i32 %4, i32* %arrayidx7.u5_27fixp, align 4, !taffo.info !156
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !140, !taffo.initweight !133
  %add9 = add nsw i32 %mul8, 2, !taffo.info !157, !taffo.initweight !136, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !159, !taffo.initweight !146
  %conv11.u4_28fixp = shl i32 %rem10, 28, !taffo.info !161
  %conv12.u4_28fixp = shl i32 %m, 28, !taffo.info !162
  %5 = lshr i32 %conv11.u4_28fixp, 1, !taffo.info !161
  %6 = lshr i32 %conv12.u4_28fixp, 1, !taffo.info !162
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !163
  %div13.u1_31fixp = shl i32 %7, 4, !taffo.info !166
  %arrayidx14.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u5_27fixp, i32 %i.0, !taffo.info !167
  %arrayidx15.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx14.u5_27fixp, i32 0, i32 %j.0, !taffo.info !167
  %8 = lshr i32 %div13.u1_31fixp, 4, !taffo.info !166
  store i32 %8, i32* %arrayidx15.u5_27fixp, align 4, !taffo.info !156
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !168, !taffo.initweight !133, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !170

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !171, !taffo.initweight !133, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !172

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !130, !taffo.initweight !131
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !132, !taffo.initweight !133
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !134, !taffo.initweight !136

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !137, !taffo.initweight !131
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !173, !taffo.initweight !133
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !139, !taffo.initweight !136

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !140, !taffo.initweight !133
  %add28 = add nsw i32 %mul27, 3, !taffo.info !174, !taffo.initweight !136, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !144, !taffo.initweight !146
  %conv30.u4_28fixp = shl i32 %rem29, 28, !taffo.info !147
  %conv31.u4_28fixp = shl i32 %m, 28, !taffo.info !162
  %9 = lshr i32 %conv30.u4_28fixp, 1, !taffo.info !147
  %10 = lshr i32 %conv31.u4_28fixp, 1, !taffo.info !162
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !176
  %div32.u4_28fixp = shl i32 %11, 1, !taffo.info !178
  %arrayidx33.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %C.u13_19fixp, i32 %i.1, !taffo.info !179
  %arrayidx34.u13_19fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx33.u13_19fixp, i32 0, i32 %j.1, !taffo.info !179
  %12 = lshr i32 %div32.u4_28fixp, 9, !taffo.info !178
  store i32 %12, i32* %arrayidx34.u13_19fixp, align 4, !taffo.info !156
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !168, !taffo.initweight !133, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !180

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !171, !taffo.initweight !133, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !181

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !182 !taffo.funinfo !183 !taffo.sourceFunction !184 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !50
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !50
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !50
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !185
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !50
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !185
  %3 = ashr i32 %1, 5, !taffo.info !50
  %4 = ashr i32 %2, 4, !taffo.info !185
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 21), !taffo.info !186
  %mul.u10_22fixp = shl i32 %5, 1, !taffo.info !189
  %6 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !50
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !50
  %7 = shl i32 %mul.u10_22fixp, 5, !taffo.info !189
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !191

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !192

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u13_19fixp, i32 noundef %factor) #0 !taffo.initweight !182 !taffo.funinfo !193 !taffo.sourceFunction !184 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %0, !taffo.info !47
  %arrayidx4.u13_19fixp = getelementptr inbounds i32, i32* %arrayidx.u13_19fixp, i32 %j.0, !taffo.info !47
  %u13_19fixp = load i32, i32* %arrayidx4.u13_19fixp, align 4, !taffo.info !47
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !185
  %1 = lshr i32 %u13_19fixp, 1, !taffo.info !47
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !185
  %3 = ashr i32 %1, 5, !taffo.info !47
  %4 = ashr i32 %2, 12, !taffo.info !185
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 13), !taffo.info !194
  %mul.u18_14fixp = shl i32 %5, 1, !taffo.info !197
  %6 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5.u13_19fixp = getelementptr inbounds i32, i32* %val.u13_19fixp, i32 %6, !taffo.info !47
  %arrayidx6.u13_19fixp = getelementptr inbounds i32, i32* %arrayidx5.u13_19fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u18_14fixp, 5, !taffo.info !197
  store i32 %7, i32* %arrayidx6.u13_19fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !199

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !200

for.end9:                                         ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 0x40BF1851C0010C6F}
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
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = distinct !{null, null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{}
!41 = !{i1 true}
!42 = !{!43, !44, i1 false, i2 -1}
!43 = !{!"fixp", i32 32, i32 30}
!44 = !{double 1.500000e+00, double 1.500000e+00}
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 1.200000e+00, double 1.200000e+00}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 19}
!49 = !{!"C"}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 27}
!52 = !{double 0.000000e+00, double 3.000000e+01}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x403CCCCCBC05D52C}
!55 = !{i1 false, !44, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, i1 false, i1 false}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !52, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.700000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 2.890000e+02}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 2.890000e+02}
!72 = distinct !{!72, !23}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.700000e+01}
!75 = distinct !{!75, !23}
!76 = !{i32 1, !77, i32 1, !0}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.600000e+01, double 1.600000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 0.000000e+00}
!83 = !{i1 false, i1 false, i1 false, i1 false}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = !{i32 1, i32 -1}
!87 = !{i32 1, !42, i32 1, !88}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 3.200000e+01, double 3.200000e+01}
!90 = !{void (float*, i32)* @scale_scalar}
!91 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!92 = !{i32 1, !77, i32 1, !16, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!93 = distinct !{null}
!94 = !{!95, !1, i1 false, i2 -1}
!95 = !{!"fixp", i32 32, i32 18}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 17}
!98 = !{double 0.000000e+00, double 0x40C2A8310CCD6DDC}
!99 = !{!95, !98, i1 false, i2 -1}
!100 = distinct !{!100, !23}
!101 = !{!102, !52, i1 false, i2 -1}
!102 = !{!"fixp", i32 32, i32 26}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 25}
!105 = !{double 0.000000e+00, double 4.500000e+01}
!106 = !{!102, !105, i1 false, i2 -1}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 -32, i32 19}
!109 = !{double 0.000000e+00, double 0x40943FFFF43419E3}
!110 = !{!111, !109, i1 false, i2 -1}
!111 = !{!"fixp", i32 32, i32 20}
!112 = !{!102, !54, i1 false, i2 -1}
!113 = !{!104, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x404599998D045FE1}
!115 = !{!102, !114, i1 false, i2 -1}
!116 = !{!95, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x40A43FFFF43419E3}
!118 = !{!95, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x40C49C28DD0D8CB0}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!124 = distinct !{null}
!125 = !{!126, i1 false}
!126 = !{i1 false, !44, i1 false, i2 0}
!127 = !{!128, i1 false}
!128 = !{i1 false, !129, i1 false, i2 0}
!129 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!130 = !{i1 false, !65, i1 false, i2 1}
!131 = !{i32 0}
!132 = !{i1 false, !67, i1 false, i2 1}
!133 = !{i32 2}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double 0.000000e+00, double 1.600000e+01}
!136 = !{i32 3}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 1.100000e+01}
!139 = !{i1 false, !3, i1 false, i2 1}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 1.600000e+02}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 1.000000e+00, double 1.610000e+02}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 0.000000e+00, double 1.500000e+01}
!146 = !{i32 4}
!147 = !{!148, !145, i1 false, i2 1}
!148 = !{!"fixp", i32 32, i32 28}
!149 = !{!51, !78, i1 false, i2 1}
!150 = !{!151, !152, i1 false, i2 1}
!151 = !{!"fixp", i32 -32, i32 26}
!152 = !{double 0.000000e+00, double 9.375000e-01}
!153 = !{!154, !152, i1 false, i2 1}
!154 = !{!"fixp", i32 32, i32 31}
!155 = !{!51, !52, i1 false, i2 1}
!156 = !{i1 false, i1 false, i1 false, i2 1}
!157 = !{i1 false, !158, i1 false, i2 1}
!158 = !{double 2.000000e+00, double 1.620000e+02}
!159 = !{i1 false, !160, i1 false, i2 1}
!160 = !{double 0.000000e+00, double 9.000000e+00}
!161 = !{!148, !160, i1 false, i2 1}
!162 = !{!148, !17, i1 false, i2 1}
!163 = !{!164, !165, i1 false, i2 1}
!164 = !{!"fixp", i32 -32, i32 27}
!165 = !{double 0.000000e+00, double 9.000000e-01}
!166 = !{!154, !165, i1 false, i2 1}
!167 = !{!51, !54, i1 false, i2 1}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 1.000000e+00, double 1.100000e+01}
!170 = distinct !{!170, !23}
!171 = !{i1 false, !74, i1 false, i2 1}
!172 = distinct !{!172, !23}
!173 = !{i1 false, !80, i1 false, i2 1}
!174 = !{i1 false, !175, i1 false, i2 1}
!175 = !{double 3.000000e+00, double 1.630000e+02}
!176 = !{!164, !177, i1 false, i2 1}
!177 = !{double 0.000000e+00, double 1.500000e+00}
!178 = !{!148, !177, i1 false, i2 1}
!179 = !{!48, !1, i1 false, i2 1}
!180 = distinct !{!180, !23}
!181 = distinct !{!181, !23}
!182 = !{i32 -1, i32 -1, i32 3, i32 -1}
!183 = !{i32 1, !77, i32 1, !16, i32 1, !50, i32 1, !88}
!184 = !{void (i32, i32, float*, i32)* @scale_2d}
!185 = !{!102, !89, i1 false, i2 1}
!186 = !{!187, !188, i1 false, i2 -1}
!187 = !{!"fixp", i32 -32, i32 21}
!188 = !{double 0.000000e+00, double 9.600000e+02}
!189 = !{!190, !188, i1 false, i2 -1}
!190 = !{!"fixp", i32 32, i32 22}
!191 = distinct !{!191, !23}
!192 = distinct !{!192, !23}
!193 = !{i32 1, !77, i32 1, !77, i32 1, !47, i32 1, !88}
!194 = !{!195, !196, i1 false, i2 -1}
!195 = !{!"fixp", i32 -32, i32 13}
!196 = !{double 0.000000e+00, double 0x410F1851C0010C6F}
!197 = !{!198, !196, i1 false, i2 -1}
!198 = !{!"fixp", i32 32, i32 14}
!199 = distinct !{!199, !23}
!200 = distinct !{!200, !23}
