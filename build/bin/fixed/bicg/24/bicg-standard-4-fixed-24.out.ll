; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-4-fixed-24.out.ll.4.taffotmp.ll'
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
  %A.u3_29fixp = alloca [22 x [20 x i32]], align 4, !taffo.info !44
  %s.u7_25fixp = alloca [20 x i32], align 4, !taffo.info !47, !taffo.target !49
  %q.u7_25fixp = alloca [22 x i32], align 4, !taffo.info !50, !taffo.target !51
  %p.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !52
  %r.u3_29fixp = alloca [22 x i32], align 4, !taffo.info !44
  %arraydecay.u3_29fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay6.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay7.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u3_29fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay8.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay9.u7_25fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @init_array.6_fixp(i32 20, i32 22, [20 x i32]* %arraydecay.u3_29fixp, i32* %arraydecay6.u3_29fixp, i32* %arraydecay7.u3_29fixp, i32* %arraydecay8.u7_25fixp, i32* %arraydecay9.u7_25fixp), !taffo.info !54, !taffo.constinfo !55
  %arraydecay10.u3_29fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %u3_29fixp = bitcast [20 x i32]* %arraydecay10.u3_29fixp to i32*, !taffo.info !44
  call void @scale_2d.7_fixp(i32 22, i32 20, i32* %u3_29fixp, i32 4), !taffo.info !54, !taffo.constinfo !56
  %arraydecay11.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay11.u7_25fixp, i32 4), !taffo.info !57, !taffo.constinfo !58, !taffo.target !49
  %arraydecay12.u7_25fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay12.u7_25fixp, i32 4), !taffo.info !59, !taffo.constinfo !58, !taffo.target !51
  %arraydecay13.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u3_29fixp, i32 0, i32 0, !taffo.info !52
  call void @scale_1d.3_fixp(i32 20, i32* %arraydecay13.u3_29fixp, i32 4), !taffo.info !60, !taffo.constinfo !58
  %arraydecay14.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @scale_1d.3_fixp(i32 22, i32* %arraydecay14.u3_29fixp, i32 4), !taffo.info !54, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !61
  %arraydecay15.u3_29fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay16.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u7_25fixp, i32 0, i32 0, !taffo.info !47, !taffo.target !49
  %arraydecay17.u7_25fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u7_25fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !51
  %arraydecay18.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u3_29fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay19.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u3_29fixp, i32 0, i32 0, !taffo.info !44
  call void @kernel_bicg.4_fixp(i32 20, i32 22, [20 x i32]* %arraydecay15.u3_29fixp, i32* %arraydecay16.u7_25fixp, i32* %arraydecay17.u7_25fixp, i32* %arraydecay18.u3_29fixp, i32* %arraydecay19.u3_29fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u7_25fixp, i32 0, i32 %i.0, !taffo.info !47, !taffo.target !49
  %u7_25fixp = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !47, !taffo.target !49
  %0 = uitofp i32 %u7_25fixp to float, !taffo.info !47, !taffo.target !49
  %1 = fdiv float %0, 0x4180000000000000, !taffo.info !47, !taffo.target !49
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
  %arrayidx25.u7_25fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u7_25fixp, i32 0, i32 %i21.0, !taffo.info !50, !taffo.target !51
  %u7_25fixp1 = load i32, i32* %arrayidx25.u7_25fixp, align 4, !taffo.info !50, !taffo.target !51
  %2 = uitofp i32 %u7_25fixp1 to float, !taffo.info !50, !taffo.target !51
  %3 = fdiv float %2, 0x4180000000000000, !taffo.info !50, !taffo.target !51
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
define internal void @scale_1d.3_fixp(i32 noundef %n, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !52
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !91
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !93
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !91
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !93
  %2 = ashr i32 %0, 2, !taffo.info !91
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !94
  %mul.u5_27fixp = shl i32 %3, 1, !taffo.info !97
  %arrayidx1.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %i.0, !taffo.info !52
  %4 = shl i32 %mul.u5_27fixp, 2, !taffo.info !97
  store i32 %4, i32* %arrayidx1.u3_29fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !86 !taffo.funinfo !99 !taffo.sourceFunction !90 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !100
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !102
  %0 = lshr i32 %u7_25fixp, 1, !taffo.info !100
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !102
  %2 = ashr i32 %0, 2, !taffo.info !100
  %3 = ashr i32 %1, 6, !taffo.info !102
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !103
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !106
  %arrayidx1.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u9_23fixp, 2, !taffo.info !106
  store i32 %5, i32* %arrayidx1.u7_25fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.4_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u3_29fixp, i32* noundef %s.u7_25fixp, i32* noundef %q.u7_25fixp, i32* noundef %p.u3_29fixp, i32* noundef %r.u3_29fixp) #0 !taffo.initweight !108 !taffo.funinfo !109 !taffo.sourceFunction !110 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %s.u7_25fixp, i32 %i.0, !taffo.info !47
  store i32 0, i32* %arrayidx.u7_25fixp, align 4, !taffo.info !111, !taffo.constinfo !112
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !64
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %q.u7_25fixp, i32 %i.1, !taffo.info !50
  store i32 0, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !111, !taffo.constinfo !112
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !64
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u7_25fixp = getelementptr inbounds i32, i32* %s.u7_25fixp, i32 %j.0, !taffo.info !47
  %u7_25fixp = load i32, i32* %arrayidx8.u7_25fixp, align 4, !taffo.info !47
  %arrayidx9.u3_29fixp = getelementptr inbounds i32, i32* %r.u3_29fixp, i32 %i.1, !taffo.info !44
  %u3_29fixp2 = load i32, i32* %arrayidx9.u3_29fixp, align 4, !taffo.info !114
  %arrayidx10.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !44
  %arrayidx11.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10.u3_29fixp, i32 0, i32 %j.0, !taffo.info !44
  %u3_29fixp3 = load i32, i32* %arrayidx11.u3_29fixp, align 4, !taffo.info !114
  %0 = lshr i32 %u3_29fixp2, 1, !taffo.info !114
  %1 = lshr i32 %u3_29fixp3, 1, !taffo.info !114
  %2 = ashr i32 %0, 1, !taffo.info !114
  %3 = ashr i32 %1, 1, !taffo.info !114
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 27), !taffo.info !116
  %mul.u4_28fixp = shl i32 %4, 1, !taffo.info !119
  %5 = lshr i32 %mul.u4_28fixp, 3, !taffo.info !119
  %add.u7_25fixp = add i32 %u7_25fixp, %5, !taffo.info !120
  %arrayidx12.u7_25fixp = getelementptr inbounds i32, i32* %s.u7_25fixp, i32 %j.0, !taffo.info !47
  store i32 %add.u7_25fixp, i32* %arrayidx12.u7_25fixp, align 4, !taffo.info !57
  %arrayidx13.u7_25fixp = getelementptr inbounds i32, i32* %q.u7_25fixp, i32 %i.1, !taffo.info !50
  %u7_25fixp1 = load i32, i32* %arrayidx13.u7_25fixp, align 4, !taffo.info !50
  %arrayidx14.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !44
  %arrayidx15.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u3_29fixp, i32 0, i32 %j.0, !taffo.info !44
  %u3_29fixp4 = load i32, i32* %arrayidx15.u3_29fixp, align 4, !taffo.info !114
  %arrayidx16.u3_29fixp = getelementptr inbounds i32, i32* %p.u3_29fixp, i32 %j.0, !taffo.info !52
  %u3_29fixp = load i32, i32* %arrayidx16.u3_29fixp, align 4, !taffo.info !122
  %6 = lshr i32 %u3_29fixp4, 1, !taffo.info !114
  %7 = lshr i32 %u3_29fixp, 1, !taffo.info !122
  %8 = ashr i32 %6, 1, !taffo.info !114
  %9 = ashr i32 %7, 1, !taffo.info !122
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 27), !taffo.info !123
  %mul17.u4_28fixp = shl i32 %10, 1, !taffo.info !125
  %11 = lshr i32 %mul17.u4_28fixp, 3, !taffo.info !125
  %add18.u7_25fixp = add i32 %u7_25fixp1, %11, !taffo.info !126
  %arrayidx19.u7_25fixp = getelementptr inbounds i32, i32* %q.u7_25fixp, i32 %i.1, !taffo.info !50
  store i32 %add18.u7_25fixp, i32* %arrayidx19.u7_25fixp, align 4, !taffo.info !59
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !128

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !129

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.6_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u3_29fixp, i32* noundef %r.u3_29fixp, i32* noundef %p.u3_29fixp, i32* noundef %s.u7_25fixp, i32* noundef %q.u7_25fixp) #0 !taffo.initweight !108 !taffo.funinfo !130 !taffo.sourceFunction !131 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !132, !taffo.initweight !133
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !136, !taffo.initweight !138

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !139, !taffo.initweight !135
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !141
  %conv3.u5_27fixp = shl i32 %m, 27, !taffo.info !142
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !141
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !142
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !143
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !145
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %p.u3_29fixp, i32 %i.0, !taffo.info !147
  %3 = lshr i32 %div.u1_31fixp, 2, !taffo.info !145
  store i32 %3, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !111
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %s.u7_25fixp, i32 %i.0, !taffo.info !148
  store i32 0, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !111, !taffo.constinfo !112
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !135, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !132, !taffo.initweight !133
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !136, !taffo.initweight !138

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !151, !taffo.initweight !135
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !152
  %conv11.u5_27fixp = shl i32 %n, 27, !taffo.info !153
  %4 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !152
  %5 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !153
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !154
  %div12.u1_31fixp = shl i32 %6, 5, !taffo.info !156
  %arrayidx13.u3_29fixp = getelementptr inbounds i32, i32* %r.u3_29fixp, i32 %i.1, !taffo.info !157
  %7 = lshr i32 %div12.u1_31fixp, 2, !taffo.info !156
  store i32 %7, i32* %arrayidx13.u3_29fixp, align 4, !taffo.info !111
  %arrayidx14.u7_25fixp = getelementptr inbounds i32, i32* %q.u7_25fixp, i32 %i.1, !taffo.info !158
  store i32 0, i32* %arrayidx14.u7_25fixp, align 4, !taffo.info !111, !taffo.constinfo !112
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !151, !taffo.initweight !133
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !134, !taffo.initweight !135
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !159, !taffo.initweight !138

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !135, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !162, !taffo.initweight !135
  %rem19 = srem i32 %mul, %n, !taffo.info !151, !taffo.initweight !138
  %conv20.u5_27fixp = shl i32 %rem19, 27, !taffo.info !152
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !153
  %8 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !152
  %9 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !153
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !154
  %div22.u1_31fixp = shl i32 %10, 5, !taffo.info !156
  %arrayidx23.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !157
  %arrayidx24.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u3_29fixp, i32 0, i32 %j.0, !taffo.info !157
  %11 = lshr i32 %div22.u1_31fixp, 2, !taffo.info !156
  store i32 %11, i32* %arrayidx24.u3_29fixp, align 4, !taffo.info !111
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !135, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !164

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !149, !taffo.initweight !135, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !165

for.end30:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !166 !taffo.funinfo !167 !taffo.sourceFunction !168 {
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
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !44
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !44
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !169
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !93
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !169
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !93
  %3 = ashr i32 %1, 2, !taffo.info !169
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 26), !taffo.info !170
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !172
  %5 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !44
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !44
  %6 = shl i32 %mul.u5_27fixp, 2, !taffo.info !172
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !173

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !174

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
!1 = !{double 0.000000e+00, double 0x405B5D1761459536}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40582E8B9FDBD2FA}
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
!45 = !{!"fixp", i32 32, i32 29}
!46 = !{double 0.000000e+00, double 0x400E8BA301216830}
!47 = !{!48, !1, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 25}
!49 = !{!"s"}
!50 = !{!48, !3, i1 false, i2 -1}
!51 = !{!"q"}
!52 = !{!45, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 3.800000e+00}
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
!89 = !{double 4.000000e+00, double 4.000000e+00}
!90 = !{void (i32, float*, i32)* @scale_1d}
!91 = !{!92, !53, i1 false, i2 -1}
!92 = !{!"fixp", i32 32, i32 27}
!93 = !{!92, !89, i1 false, i2 1}
!94 = !{!95, !96, i1 false, i2 -1}
!95 = !{!"fixp", i32 -32, i32 26}
!96 = !{double 0.000000e+00, double 1.520000e+01}
!97 = !{!92, !96, i1 false, i2 -1}
!98 = distinct !{!98, !25}
!99 = !{i32 1, !75, i32 1, !47, i32 1, !88}
!100 = !{!101, !1, i1 false, i2 -1}
!101 = !{!"fixp", i32 32, i32 23}
!102 = !{!45, !89, i1 false, i2 1}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 22}
!105 = !{double 0.000000e+00, double 0x407B5D1761459536}
!106 = !{!101, !105, i1 false, i2 -1}
!107 = distinct !{!107, !25}
!108 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!109 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !44}
!110 = distinct !{null}
!111 = !{i1 false, i1 false, i1 false, i2 1}
!112 = !{!81, i1 false}
!113 = distinct !{!113, !25}
!114 = !{!115, !46, i1 false, i2 -1}
!115 = !{!"fixp", i32 32, i32 28}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 27}
!118 = !{double 0.000000e+00, double 0x402D2832F576C918}
!119 = !{!115, !118, i1 false, i2 -1}
!120 = !{!48, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x405F021DBFF46E59}
!122 = !{!115, !53, i1 false, i2 -1}
!123 = !{!117, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x402D04A7A779562D}
!125 = !{!115, !124, i1 false, i2 -1}
!126 = !{!48, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x405BCF2094CAFDC0}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = !{i32 1, !75, i32 1, !77, i32 1, !44, i32 1, !44, i32 1, !52, i32 1, !47, i32 1, !50}
!131 = distinct !{null}
!132 = !{i1 false, !70, i1 false, i2 1}
!133 = !{i32 0}
!134 = !{i1 false, !65, i1 false, i2 1}
!135 = !{i32 2}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 0.000000e+00, double 2.200000e+01}
!138 = !{i32 3}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 1.900000e+01}
!141 = !{!92, !140, i1 false, i2 1}
!142 = !{!92, !76, i1 false, i2 1}
!143 = !{!95, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 0x3FEE666666666666}
!145 = !{!146, !144, i1 false, i2 1}
!146 = !{!"fixp", i32 32, i32 31}
!147 = !{!45, !53, i1 false, i2 1}
!148 = !{!48, !1, i1 false, i2 1}
!149 = !{i1 false, !72, i1 false, i2 1}
!150 = distinct !{!150, !25}
!151 = !{i1 false, !63, i1 false, i2 1}
!152 = !{!92, !63, i1 false, i2 1}
!153 = !{!92, !78, i1 false, i2 1}
!154 = !{!95, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!156 = !{!146, !155, i1 false, i2 1}
!157 = !{!45, !46, i1 false, i2 1}
!158 = !{!48, !3, i1 false, i2 1}
!159 = !{i1 false, !160, i1 false, i2 1}
!160 = !{double 0.000000e+00, double 2.000000e+01}
!161 = !{i1 false, !67, i1 false, i2 1}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 0.000000e+00, double 4.620000e+02}
!164 = distinct !{!164, !25}
!165 = distinct !{!165, !25}
!166 = !{i32 -1, i32 -1, i32 3, i32 -1}
!167 = !{i32 1, !77, i32 1, !75, i32 1, !44, i32 1, !88}
!168 = !{void (i32, i32, float*, i32)* @scale_2d}
!169 = !{!92, !46, i1 false, i2 -1}
!170 = !{!95, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 0x402E8BA301216830}
!172 = !{!92, !171, i1 false, i2 -1}
!173 = distinct !{!173, !25}
!174 = distinct !{!174, !25}
