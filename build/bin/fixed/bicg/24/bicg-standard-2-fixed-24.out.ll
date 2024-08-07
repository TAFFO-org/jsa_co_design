; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-2-fixed-24.out.ll.4.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@s_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@q_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !17
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !20
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !28 !taffo.funinfo !29 !taffo.equivalentChild !30 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !34 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !35

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !36

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !37 !taffo.funinfo !38 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !23
  br label %for.cond4, !llvm.loop !39

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !40

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !41

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !42 !taffo.funinfo !42 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.start !43 {
entry:
  %A.u2_30fixp = alloca [22 x [20 x i32]], align 4, !taffo.info !44
  %s.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !47, !taffo.target !49
  %q.u5_27fixp = alloca [22 x i32], align 4, !taffo.info !50, !taffo.target !51
  %p.u2_30fixp = alloca [20 x i32], align 4, !taffo.info !52
  %r.u2_30fixp = alloca [22 x i32], align 4, !taffo.info !44
  %arraydecay.u2_30fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay6.u2_30fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u2_30fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay7.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay8.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay9.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u5_27fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @init_array.6_fixp(i32 20, i32 22, [20 x i32]* %arraydecay.u2_30fixp, i32* %arraydecay6.u2_30fixp, i32* %arraydecay7.u2_30fixp, i32* %arraydecay8.u5_27fixp, i32* %arraydecay9.u5_27fixp), !taffo.info !54, !taffo.constinfo !55
  %arraydecay10.u2_30fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !44
  %u2_30fixp = bitcast [20 x i32]* %arraydecay10.u2_30fixp to i32*, !taffo.info !44
  call void @scale_2d.7_fixp(i32 22, i32 20, i32* %u2_30fixp, i32 2), !taffo.info !54, !taffo.constinfo !56
  %arraydecay11.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay11.u5_27fixp, i32 2), !taffo.info !57, !taffo.constinfo !58, !taffo.target !49
  %arraydecay12.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u5_27fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay12.u5_27fixp, i32 2), !taffo.info !59, !taffo.constinfo !58, !taffo.target !51
  %arraydecay13.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u2_30fixp, i32 0, i32 0, !taffo.info !52
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay13.u2_30fixp, i32 2), !taffo.info !60, !taffo.constinfo !58
  %arraydecay14.u2_30fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u2_30fixp, i32 0, i32 0, !taffo.info !44
  call void @scale_1d.3_fixp(i32 22, i32* %arraydecay14.u2_30fixp, i32 2), !taffo.info !54, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !61
  %arraydecay15.u2_30fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay16.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u5_27fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay17.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u5_27fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  %arraydecay18.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay19.u2_30fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u2_30fixp, i32 0, i32 0, !taffo.info !44
  call void @kernel_bicg.4_fixp(i32 20, i32 22, [20 x i32]* %arraydecay15.u2_30fixp, i32* %arraydecay16.u5_27fixp, i32* %arraydecay17.u5_27fixp, i32* %arraydecay18.u2_30fixp, i32* %arraydecay19.u2_30fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u5_27fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %u5_27fixp1 = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u5_27fixp1 to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 0x41A0000000000000, !taffo.info !47, !taffo.target !49
  %arrayidx20 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx20, align 4, !taffo.info !57, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end
  %i21.0 = phi i32 [ 0, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !69
  %cmp23 = icmp slt i32 %i21.0, 22, !taffo.info !64
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %arrayidx25.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u5_27fixp, i32 0, i32 %i21.0, !taffo.info !50, !taffo.target !51
  %u5_27fixp = load i32, i32* %arrayidx25.u5_27fixp, align 4, !taffo.info !50, !taffo.target !51
  %2 = uitofp i32 %u5_27fixp to float, !taffo.info !50, !taffo.target !51
  %3 = fdiv float %2, 0x41A0000000000000, !taffo.info !50, !taffo.target !51
  %arrayidx26 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i21.0, !taffo.info !2
  store float %3, float* %arrayidx26, align 4, !taffo.info !59, !taffo.target !51
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %inc28 = add nsw i32 %i21.0, 1, !taffo.info !71, !taffo.constinfo !23
  br label %for.cond22, !llvm.loop !73

for.end29:                                        ; preds = %for.cond22
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !56
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !32 !taffo.funinfo !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !81, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !79
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !64
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !81, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !79
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !58
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !85

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !26 !taffo.funinfo !27 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !88 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !52
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !89
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !91
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !89
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !91
  %2 = ashr i32 %0, 1, !taffo.info !89
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !92
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !95
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !52
  %4 = shl i32 %mul.u3_29fixp, 1, !taffo.info !95
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !97 !taffo.sourceFunction !88 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !98
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !100
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !98
  %1 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !100
  %2 = ashr i32 %0, 1, !taffo.info !98
  %3 = ashr i32 %1, 4, !taffo.info !100
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 25), !taffo.info !101
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !104
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u6_26fixp, 1, !taffo.info !104
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %s.u5_27fixp, i32* noundef %q.u5_27fixp, i32* noundef %p.u2_30fixp, i32* noundef %r.u2_30fixp) #0 !taffo.initweight !106 !taffo.funinfo !107 !taffo.sourceFunction !108 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %s.u5_27fixp, i32 %i.0, !taffo.info !47
  store i32 0, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !64
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %q.u5_27fixp, i32 %i.1, !taffo.info !50
  store i32 0, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !64
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u5_27fixp = getelementptr inbounds i32, i32* %s.u5_27fixp, i32 %j.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !98
  %arrayidx9.u2_30fixp = getelementptr inbounds i32, i32* %r.u2_30fixp, i32 %i.1, !taffo.info !44
  %u2_30fixp2 = load i32, i32* %arrayidx9.u2_30fixp, align 4, !taffo.info !112
  %arrayidx10.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.1, !taffo.info !44
  %arrayidx11.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10.u2_30fixp, i32 0, i32 %j.0, !taffo.info !44
  %u2_30fixp3 = load i32, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !112
  %0 = lshr i32 %u2_30fixp2, 1, !taffo.info !112
  %1 = lshr i32 %u2_30fixp3, 1, !taffo.info !112
  %2 = ashr i32 %0, 1, !taffo.info !112
  %3 = ashr i32 %1, 1, !taffo.info !112
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !113
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !115
  %5 = lshr i32 %u5_27fixp, 1, !taffo.info !98
  %6 = lshr i32 %mul.u3_29fixp, 3, !taffo.info !115
  %add.u6_26fixp = add i32 %5, %6, !taffo.info !116
  %arrayidx12.u5_27fixp = getelementptr inbounds i32, i32* %s.u5_27fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %add.u6_26fixp, 1, !taffo.info !116
  store i32 %7, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !57
  %arrayidx13.u5_27fixp = getelementptr inbounds i32, i32* %q.u5_27fixp, i32 %i.1, !taffo.info !50
  %u5_27fixp1 = load i32, i32* %arrayidx13.u5_27fixp, align 4, !taffo.info !50
  %arrayidx14.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.1, !taffo.info !44
  %arrayidx15.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u2_30fixp, i32 0, i32 %j.0, !taffo.info !44
  %u2_30fixp4 = load i32, i32* %arrayidx15.u2_30fixp, align 4, !taffo.info !112
  %arrayidx16.u2_30fixp = getelementptr inbounds i32, i32* %p.u2_30fixp, i32 %j.0, !taffo.info !52
  %u2_30fixp = load i32, i32* %arrayidx16.u2_30fixp, align 4, !taffo.info !89
  %8 = lshr i32 %u2_30fixp4, 1, !taffo.info !112
  %9 = lshr i32 %u2_30fixp, 1, !taffo.info !89
  %10 = ashr i32 %8, 3, !taffo.info !112
  %11 = ashr i32 %9, 3, !taffo.info !89
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 26), !taffo.info !118
  %mul17.u5_27fixp = shl i32 %12, 1, !taffo.info !121
  %add18.u5_27fixp = add i32 %u5_27fixp1, %mul17.u5_27fixp, !taffo.info !122
  %arrayidx19.u5_27fixp = getelementptr inbounds i32, i32* %q.u5_27fixp, i32 %i.1, !taffo.info !50
  store i32 %add18.u5_27fixp, i32* %arrayidx19.u5_27fixp, align 4, !taffo.info !59
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !124

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !125

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u2_30fixp, i32* noundef %r.u2_30fixp, i32* noundef %p.u2_30fixp, i32* noundef %s.u5_27fixp, i32* noundef %q.u5_27fixp) #0 !taffo.initweight !106 !taffo.funinfo !126 !taffo.sourceFunction !127 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !128, !taffo.initweight !129
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !130, !taffo.initweight !131
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !132, !taffo.initweight !134

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !135, !taffo.initweight !131
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !137
  %conv3.u5_27fixp = shl i32 %m, 27, !taffo.info !138
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !137
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !138
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !139
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !141
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %p.u2_30fixp, i32 %i.0, !taffo.info !143
  %3 = lshr i32 %div.u1_31fixp, 1, !taffo.info !141
  store i32 %3, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !109
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %s.u5_27fixp, i32 %i.0, !taffo.info !144
  store i32 0, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !145, !taffo.initweight !131, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !128, !taffo.initweight !129
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !130, !taffo.initweight !131
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !132, !taffo.initweight !134

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !147, !taffo.initweight !131
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !148
  %conv11.u5_27fixp = shl i32 %n, 27, !taffo.info !149
  %4 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !148
  %5 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !149
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !150
  %div12.u1_31fixp = shl i32 %6, 5, !taffo.info !152
  %arrayidx13.u2_30fixp = getelementptr inbounds i32, i32* %r.u2_30fixp, i32 %i.1, !taffo.info !153
  %7 = lshr i32 %div12.u1_31fixp, 1, !taffo.info !152
  store i32 %7, i32* %arrayidx13.u2_30fixp, align 4, !taffo.info !109
  %arrayidx14.u5_27fixp = getelementptr inbounds i32, i32* %q.u5_27fixp, i32 %i.1, !taffo.info !154
  store i32 0, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !109, !taffo.constinfo !110
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !147, !taffo.initweight !129
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !130, !taffo.initweight !131
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !155, !taffo.initweight !134

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !157, !taffo.initweight !131, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !158, !taffo.initweight !131
  %rem19 = srem i32 %mul, %n, !taffo.info !147, !taffo.initweight !134
  %conv20.u5_27fixp = shl i32 %rem19, 27, !taffo.info !148
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !149
  %8 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !148
  %9 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !149
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !150
  %div22.u1_31fixp = shl i32 %10, 5, !taffo.info !152
  %arrayidx23.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u2_30fixp, i32 %i.1, !taffo.info !153
  %arrayidx24.u2_30fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u2_30fixp, i32 0, i32 %j.0, !taffo.info !153
  %11 = lshr i32 %div22.u1_31fixp, 1, !taffo.info !152
  store i32 %11, i32* %arrayidx24.u2_30fixp, align 4, !taffo.info !109
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !157, !taffo.initweight !131, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !160

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !145, !taffo.initweight !131, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !161

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !164 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !44
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !44
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !112
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !91
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !112
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !91
  %3 = ashr i32 %1, 1, !taffo.info !112
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !165
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !167
  %5 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !44
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !44
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !167
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !168

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !169

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

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x403B5D1761459536}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40382E8B9FDBD2FA}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.000000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+01, double 1.000000e+01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 2.000000e+00, double 2.000000e+00}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false}
!28 = !{i32 -1, i32 -1, i32 -1}
!29 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!30 = distinct !{null, null, null, null}
!31 = distinct !{!31, !25}
!32 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = distinct !{null}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!38 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = !{}
!43 = !{i1 true}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 30}
!46 = !{double 0.000000e+00, double 0x3FFE8BA301216830}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 27}
!49 = !{!"s"}
!50 = !{!48, !3, i1 false, i2 -1}
!51 = !{!"q"}
!52 = !{!45, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 1.900000e+00}
!54 = !{i1 false, !46, i1 false, i2 -1}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, !1, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !3, i1 false, i2 -1}
!60 = !{i1 false, !53, i1 false, i2 -1}
!61 = !{i1 false}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.100000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 2.100000e+01}
!68 = distinct !{!68, !25}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 2.300000e+01}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 2.300000e+01}
!73 = distinct !{!73, !25}
!74 = !{i32 1, !75, i32 1, !77, i32 1, !0, i32 1, !2}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 2.000000e+01, double 2.000000e+01}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 2.200000e+01, double 2.200000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 0.000000e+00}
!83 = !{i1 false, i1 false, i1 false}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = !{i32 -1, i32 2, i32 -1}
!87 = !{i32 1, !75, i32 1, !52, i32 1, !21}
!88 = !{void (i32, float*, i32)* @scale_1d}
!89 = !{!90, !53, i1 false, i2 -1}
!90 = !{!"fixp", i32 32, i32 29}
!91 = !{!90, !22, i1 false, i2 1}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 28}
!94 = !{double 0.000000e+00, double 3.800000e+00}
!95 = !{!90, !94, i1 false, i2 -1}
!96 = distinct !{!96, !25}
!97 = !{i32 1, !75, i32 1, !47, i32 1, !21}
!98 = !{!99, !1, i1 false, i2 -1}
!99 = !{!"fixp", i32 32, i32 26}
!100 = !{!45, !22, i1 false, i2 1}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 -32, i32 25}
!103 = !{double 0.000000e+00, double 0x404B5D1761459536}
!104 = !{!99, !103, i1 false, i2 -1}
!105 = distinct !{!105, !25}
!106 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!107 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !44}
!108 = distinct !{null}
!109 = !{i1 false, i1 false, i1 false, i2 1}
!110 = !{!81, i1 false}
!111 = distinct !{!111, !25}
!112 = !{!90, !46, i1 false, i2 -1}
!113 = !{!93, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 0x400D2832F576C918}
!115 = !{!90, !114, i1 false, i2 -1}
!116 = !{!99, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x403F021DBFF46E59}
!118 = !{!119, !120, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 26}
!120 = !{double 0.000000e+00, double 0x400D04A7A779562D}
!121 = !{!48, !120, i1 false, i2 -1}
!122 = !{!48, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x403BCF2094CAFDC0}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !44, i32 1, !52, i32 1, !47, i32 1, !50}
!127 = distinct !{null}
!128 = !{i1 false, !70, i1 false, i2 1}
!129 = !{i32 0}
!130 = !{i1 false, !65, i1 false, i2 1}
!131 = !{i32 2}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 2.200000e+01}
!134 = !{i32 3}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.900000e+01}
!137 = !{!48, !136, i1 false, i2 1}
!138 = !{!48, !76, i1 false, i2 1}
!139 = !{!119, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 0x3FEE666666666666}
!141 = !{!142, !140, i1 false, i2 1}
!142 = !{!"fixp", i32 32, i32 31}
!143 = !{!45, !53, i1 false, i2 1}
!144 = !{!48, !1, i1 false, i2 1}
!145 = !{i1 false, !72, i1 false, i2 1}
!146 = distinct !{!146, !25}
!147 = !{i1 false, !63, i1 false, i2 1}
!148 = !{!48, !63, i1 false, i2 1}
!149 = !{!48, !78, i1 false, i2 1}
!150 = !{!119, !151, i1 false, i2 1}
!151 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!152 = !{!142, !151, i1 false, i2 1}
!153 = !{!45, !46, i1 false, i2 1}
!154 = !{!48, !3, i1 false, i2 1}
!155 = !{i1 false, !156, i1 false, i2 1}
!156 = !{double 0.000000e+00, double 2.000000e+01}
!157 = !{i1 false, !67, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 4.620000e+02}
!160 = distinct !{!160, !25}
!161 = distinct !{!161, !25}
!162 = !{i32 -1, i32 -1, i32 3, i32 -1}
!163 = !{i32 1, !77, i32 1, !75, i32 1, !44, i32 1, !21}
!164 = !{void (i32, i32, float*, i32)* @scale_2d}
!165 = !{!93, !166, i1 false, i2 -1}
!166 = !{double 0.000000e+00, double 0x400E8BA301216830}
!167 = !{!90, !166, i1 false, i2 -1}
!168 = distinct !{!168, !25}
!169 = distinct !{!169, !25}
