; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-16-fixed-24.out.ll.4.taffotmp.ll'
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
  %A.u5_27fixp = alloca [22 x [20 x i32]], align 4, !taffo.info !44
  %s.u11_21fixp = alloca [20 x i32], align 4, !taffo.info !47, !taffo.target !49
  %q.u11_21fixp = alloca [22 x i32], align 4, !taffo.info !50, !taffo.target !51
  %p.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !52
  %r.u5_27fixp = alloca [22 x i32], align 4, !taffo.info !44
  %arraydecay.u5_27fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay6.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u5_27fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay7.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u5_27fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay8.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u11_21fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay9.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u11_21fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @init_array.6_fixp(i32 20, i32 22, [20 x i32]* %arraydecay.u5_27fixp, i32* %arraydecay6.u5_27fixp, i32* %arraydecay7.u5_27fixp, i32* %arraydecay8.u11_21fixp, i32* %arraydecay9.u11_21fixp), !taffo.info !54, !taffo.constinfo !55
  %arraydecay10.u5_27fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !44
  %u5_27fixp = bitcast [20 x i32]* %arraydecay10.u5_27fixp to i32*, !taffo.info !44
  call void @scale_2d.7_fixp(i32 22, i32 20, i32* %u5_27fixp, i32 16), !taffo.info !54, !taffo.constinfo !56
  %arraydecay11.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u11_21fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay11.u11_21fixp, i32 16), !taffo.info !57, !taffo.constinfo !58, !taffo.target !49
  %arraydecay12.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u11_21fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay12.u11_21fixp, i32 16), !taffo.info !59, !taffo.constinfo !58, !taffo.target !51
  %arraydecay13.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u5_27fixp, i32 0, i32 0, !taffo.info !52
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay13.u5_27fixp, i32 16), !taffo.info !60, !taffo.constinfo !58
  %arraydecay14.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u5_27fixp, i32 0, i32 0, !taffo.info !44
  call void @scale_1d.3_fixp(i32 22, i32* %arraydecay14.u5_27fixp, i32 16), !taffo.info !54, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !61
  %arraydecay15.u5_27fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay16.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u11_21fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay17.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u11_21fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  %arraydecay18.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u5_27fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay19.u5_27fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u5_27fixp, i32 0, i32 0, !taffo.info !44
  call void @kernel_bicg.4_fixp(i32 20, i32 22, [20 x i32]* %arraydecay15.u5_27fixp, i32* %arraydecay16.u11_21fixp, i32* %arraydecay17.u11_21fixp, i32* %arraydecay18.u5_27fixp, i32* %arraydecay19.u5_27fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u11_21fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u11_21fixp to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 0x4140000000000000, !taffo.info !47, !taffo.target !49
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
  %arrayidx25.u11_21fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u11_21fixp, i32 0, i32 %i21.0, !taffo.info !50, !taffo.target !51
  %u11_21fixp1 = load i32, i32* %arrayidx25.u11_21fixp, align 4, !taffo.info !50, !taffo.target !51
  %2 = uitofp i32 %u11_21fixp1 to float, !taffo.info !50, !taffo.target !51
  %3 = fdiv float %2, 0x4140000000000000, !taffo.info !50, !taffo.target !51
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
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !52
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !52
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !91
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !52
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !91
  %2 = ashr i32 %0, 3, !taffo.info !52
  %3 = ashr i32 %1, 3, !taffo.info !91
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !92
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !95
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !52
  %5 = shl i32 %mul.u8_24fixp, 3, !taffo.info !95
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !98 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !47
  %u11_21fixp = load i32, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !47
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !91
  %0 = lshr i32 %u11_21fixp, 1, !taffo.info !47
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !91
  %2 = ashr i32 %0, 4, !taffo.info !47
  %3 = ashr i32 %1, 10, !taffo.info !91
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 16), !taffo.info !99
  %mul.u15_17fixp = shl i32 %4, 1, !taffo.info !102
  %arrayidx1.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u15_17fixp, 4, !taffo.info !102
  store i32 %5, i32* %arrayidx1.u11_21fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u5_27fixp, i32* noundef %s.u11_21fixp, i32* noundef %q.u11_21fixp, i32* noundef %p.u5_27fixp, i32* noundef %r.u5_27fixp) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !107 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %s.u11_21fixp, i32 %i.0, !taffo.info !47
  store i32 0, i32* %arrayidx.u11_21fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !64
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %q.u11_21fixp, i32 %i.1, !taffo.info !50
  store i32 0, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !64
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u11_21fixp = getelementptr inbounds i32, i32* %s.u11_21fixp, i32 %j.0, !taffo.info !47
  %u11_21fixp = load i32, i32* %arrayidx8.u11_21fixp, align 4, !taffo.info !47
  %arrayidx9.u5_27fixp = getelementptr inbounds i32, i32* %r.u5_27fixp, i32 %i.1, !taffo.info !44
  %u5_27fixp2 = load i32, i32* %arrayidx9.u5_27fixp, align 4, !taffo.info !44
  %arrayidx10.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.1, !taffo.info !44
  %arrayidx11.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10.u5_27fixp, i32 0, i32 %j.0, !taffo.info !44
  %u5_27fixp3 = load i32, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !44
  %0 = lshr i32 %u5_27fixp2, 1, !taffo.info !44
  %1 = lshr i32 %u5_27fixp3, 1, !taffo.info !44
  %2 = ashr i32 %0, 3, !taffo.info !44
  %3 = ashr i32 %1, 3, !taffo.info !44
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 23), !taffo.info !111
  %mul.u8_24fixp = shl i32 %4, 1, !taffo.info !113
  %5 = lshr i32 %mul.u8_24fixp, 3, !taffo.info !113
  %add.u11_21fixp = add i32 %u11_21fixp, %5, !taffo.info !114
  %arrayidx12.u11_21fixp = getelementptr inbounds i32, i32* %s.u11_21fixp, i32 %j.0, !taffo.info !47
  store i32 %add.u11_21fixp, i32* %arrayidx12.u11_21fixp, align 4, !taffo.info !57
  %arrayidx13.u11_21fixp = getelementptr inbounds i32, i32* %q.u11_21fixp, i32 %i.1, !taffo.info !50
  %u11_21fixp1 = load i32, i32* %arrayidx13.u11_21fixp, align 4, !taffo.info !50
  %arrayidx14.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.1, !taffo.info !44
  %arrayidx15.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u5_27fixp, i32 0, i32 %j.0, !taffo.info !44
  %u5_27fixp4 = load i32, i32* %arrayidx15.u5_27fixp, align 4, !taffo.info !44
  %arrayidx16.u5_27fixp = getelementptr inbounds i32, i32* %p.u5_27fixp, i32 %j.0, !taffo.info !52
  %u5_27fixp = load i32, i32* %arrayidx16.u5_27fixp, align 4, !taffo.info !52
  %6 = lshr i32 %u5_27fixp4, 1, !taffo.info !44
  %7 = lshr i32 %u5_27fixp, 1, !taffo.info !52
  %8 = ashr i32 %6, 3, !taffo.info !44
  %9 = ashr i32 %7, 3, !taffo.info !52
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 23), !taffo.info !116
  %mul17.u8_24fixp = shl i32 %10, 1, !taffo.info !118
  %11 = lshr i32 %mul17.u8_24fixp, 3, !taffo.info !118
  %add18.u11_21fixp = add i32 %u11_21fixp1, %11, !taffo.info !119
  %arrayidx19.u11_21fixp = getelementptr inbounds i32, i32* %q.u11_21fixp, i32 %i.1, !taffo.info !50
  store i32 %add18.u11_21fixp, i32* %arrayidx19.u11_21fixp, align 4, !taffo.info !59
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !121

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !122

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u5_27fixp, i32* noundef %r.u5_27fixp, i32* noundef %p.u5_27fixp, i32* noundef %s.u11_21fixp, i32* noundef %q.u11_21fixp) #0 !taffo.initweight !105 !taffo.funinfo !123 !taffo.sourceFunction !124 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !125, !taffo.initweight !126
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !129, !taffo.initweight !131

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !132, !taffo.initweight !128
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !134
  %conv3.u5_27fixp = shl i32 %m, 27, !taffo.info !135
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !134
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !135
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !136
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !139
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %p.u5_27fixp, i32 %i.0, !taffo.info !141
  %3 = lshr i32 %div.u1_31fixp, 4, !taffo.info !139
  store i32 %3, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !108
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %s.u11_21fixp, i32 %i.0, !taffo.info !142
  store i32 0, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !143, !taffo.initweight !128, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !125, !taffo.initweight !126
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !129, !taffo.initweight !131

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !145, !taffo.initweight !128
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !146
  %conv11.u5_27fixp = shl i32 %n, 27, !taffo.info !147
  %4 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !146
  %5 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !147
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !148
  %div12.u1_31fixp = shl i32 %6, 5, !taffo.info !150
  %arrayidx13.u5_27fixp = getelementptr inbounds i32, i32* %r.u5_27fixp, i32 %i.1, !taffo.info !151
  %7 = lshr i32 %div12.u1_31fixp, 4, !taffo.info !150
  store i32 %7, i32* %arrayidx13.u5_27fixp, align 4, !taffo.info !108
  %arrayidx14.u11_21fixp = getelementptr inbounds i32, i32* %q.u11_21fixp, i32 %i.1, !taffo.info !152
  store i32 0, i32* %arrayidx14.u11_21fixp, align 4, !taffo.info !108, !taffo.constinfo !109
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !145, !taffo.initweight !126
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !127, !taffo.initweight !128
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !153, !taffo.initweight !131

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !155, !taffo.initweight !128, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !156, !taffo.initweight !128
  %rem19 = srem i32 %mul, %n, !taffo.info !145, !taffo.initweight !131
  %conv20.u5_27fixp = shl i32 %rem19, 27, !taffo.info !146
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !147
  %8 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !146
  %9 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !147
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !148
  %div22.u1_31fixp = shl i32 %10, 5, !taffo.info !150
  %arrayidx23.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u5_27fixp, i32 %i.1, !taffo.info !151
  %arrayidx24.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u5_27fixp, i32 0, i32 %j.0, !taffo.info !151
  %11 = lshr i32 %div22.u1_31fixp, 4, !taffo.info !150
  store i32 %11, i32* %arrayidx24.u5_27fixp, align 4, !taffo.info !108
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !155, !taffo.initweight !128, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !158

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !143, !taffo.initweight !128, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !159

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !160 !taffo.funinfo !161 !taffo.sourceFunction !162 {
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
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !44
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !44
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !44
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !91
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !44
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !91
  %3 = ashr i32 %1, 3, !taffo.info !44
  %4 = ashr i32 %2, 3, !taffo.info !91
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 23), !taffo.info !163
  %mul.u8_24fixp = shl i32 %5, 1, !taffo.info !165
  %6 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !44
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !44
  %7 = shl i32 %mul.u8_24fixp, 3, !taffo.info !165
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !166

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !167

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
!1 = !{double 0.000000e+00, double 0x409B5D175FF609DD}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40982E8BA01EEED9}
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
!45 = !{!"fixp", i32 32, i32 27}
!46 = !{double 0.000000e+00, double 0x402E8BA2DF9378EE}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 21}
!49 = !{!"s"}
!50 = !{!48, !3, i1 false, i2 -1}
!51 = !{!"q"}
!52 = !{!45, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 1.520000e+01}
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
!87 = !{i32 1, !75, i32 1, !52, i32 1, !88}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.600000e+01, double 1.600000e+01}
!90 = !{void (i32, float*, i32)* @scale_1d}
!91 = !{!45, !89, i1 false, i2 1}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 23}
!94 = !{double 0.000000e+00, double 2.432000e+02}
!95 = !{!96, !94, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 24}
!97 = distinct !{!97, !25}
!98 = !{i32 1, !75, i32 1, !47, i32 1, !88}
!99 = !{!100, !101, i1 false, i2 -1}
!100 = !{!"fixp", i32 -32, i32 16}
!101 = !{double 0.000000e+00, double 0x40DB5D175FF609DD}
!102 = !{!103, !101, i1 false, i2 -1}
!103 = !{!"fixp", i32 32, i32 17}
!104 = distinct !{!104, !25}
!105 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!106 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !44}
!107 = distinct !{null}
!108 = !{i1 false, i1 false, i1 false, i2 1}
!109 = !{!81, i1 false}
!110 = distinct !{!110, !25}
!111 = !{!93, !112, i1 false, i2 -1}
!112 = !{double 0.000000e+00, double 0x406D2832B567D1B8}
!113 = !{!96, !112, i1 false, i2 -1}
!114 = !{!48, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 0x409F021DB6A30414}
!116 = !{!93, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x406D04A78798E615}
!118 = !{!96, !117, i1 false, i2 -1}
!119 = !{!48, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 0x409BCF2091120B9C}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !44, i32 1, !52, i32 1, !47, i32 1, !50}
!124 = distinct !{null}
!125 = !{i1 false, !70, i1 false, i2 1}
!126 = !{i32 0}
!127 = !{i1 false, !65, i1 false, i2 1}
!128 = !{i32 2}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 2.200000e+01}
!131 = !{i32 3}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 1.900000e+01}
!134 = !{!45, !133, i1 false, i2 1}
!135 = !{!45, !76, i1 false, i2 1}
!136 = !{!137, !138, i1 false, i2 1}
!137 = !{!"fixp", i32 -32, i32 26}
!138 = !{double 0.000000e+00, double 0x3FEE666666666666}
!139 = !{!140, !138, i1 false, i2 1}
!140 = !{!"fixp", i32 32, i32 31}
!141 = !{!45, !53, i1 false, i2 1}
!142 = !{!48, !1, i1 false, i2 1}
!143 = !{i1 false, !72, i1 false, i2 1}
!144 = distinct !{!144, !25}
!145 = !{i1 false, !63, i1 false, i2 1}
!146 = !{!45, !63, i1 false, i2 1}
!147 = !{!45, !78, i1 false, i2 1}
!148 = !{!137, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!150 = !{!140, !149, i1 false, i2 1}
!151 = !{!45, !46, i1 false, i2 1}
!152 = !{!48, !3, i1 false, i2 1}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double 0.000000e+00, double 2.000000e+01}
!155 = !{i1 false, !67, i1 false, i2 1}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 0.000000e+00, double 4.620000e+02}
!158 = distinct !{!158, !25}
!159 = distinct !{!159, !25}
!160 = !{i32 -1, i32 -1, i32 3, i32 -1}
!161 = !{i32 1, !77, i32 1, !75, i32 1, !44, i32 1, !88}
!162 = !{void (i32, i32, float*, i32)* @scale_2d}
!163 = !{!93, !164, i1 false, i2 -1}
!164 = !{double 0.000000e+00, double 0x406E8BA2DF9378EE}
!165 = !{!96, !164, i1 false, i2 -1}
!166 = distinct !{!166, !25}
!167 = distinct !{!167, !25}
