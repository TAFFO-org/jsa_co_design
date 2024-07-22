; ModuleID = './build/bin/fixed/2mm/11/2mm-standard-1024-fixed-11.out.ll.4.taffotmp.ll'
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
  %tmp.u23_9fixp = alloca [8 x [10 x i32]], align 4, !taffo.info !47
  %A.u10_22fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !50
  %B.u10_22fixp = alloca [12 x [10 x i32]], align 4, !taffo.info !53
  %C.u10_22fixp = alloca [10 x [14 x i32]], align 4, !taffo.info !55
  %D = alloca [8 x [14 x float]], align 4, !taffo.info !57, !taffo.initweight !59, !taffo.target !60
  %arraydecay.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay8.u10_22fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay9.u10_22fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u10_22fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay10.flt.1flp = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !60
  %arraydecay11.u23_9fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !47
  call void @init_array.4_fixp(i32 8, i32 10, i32 12, i32 14, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u10_22fixp, [10 x i32]* %arraydecay8.u10_22fixp, [14 x i32]* %arraydecay9.u10_22fixp, [14 x float]* %arraydecay10.flt.1flp, [10 x i32]* %arraydecay11.u23_9fixp), !taffo.info !62, !taffo.constinfo !63
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 1024), !taffo.info !62, !taffo.constinfo !64
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 1024), !taffo.info !65, !taffo.constinfo !64
  %arraydecay12.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !50
  %u10_22fixp2 = bitcast [12 x i32]* %arraydecay12.u10_22fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u10_22fixp2, i32 1024), !taffo.info !66, !taffo.constinfo !67
  %arraydecay13.u10_22fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !53
  %u10_22fixp3 = bitcast [10 x i32]* %arraydecay13.u10_22fixp to i32*, !taffo.info !53
  call void @scale_2d.6_fixp(i32 12, i32 10, i32* %u10_22fixp3, i32 1024), !taffo.info !68, !taffo.constinfo !67
  %arraydecay14.u10_22fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u10_22fixp, i32 0, i32 0, !taffo.info !55
  %u10_22fixp = bitcast [14 x i32]* %arraydecay14.u10_22fixp to i32*, !taffo.info !55
  call void @scale_2d.6_fixp(i32 10, i32 14, i32* %u10_22fixp, i32 1024), !taffo.info !69, !taffo.constinfo !67
  %arraydecay15.flt.1flp = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !60
  %"1flp" = bitcast [14 x float]* %arraydecay15.flt.1flp to float*, !taffo.info !57, !taffo.target !60
  call void @scale_2d.9_fixp(i32 8, i32 14, float* %"1flp", i32 1024), !taffo.info !70, !taffo.constinfo !67, !taffo.target !60
  %arraydecay16.u23_9fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !47
  %u23_9fixp = bitcast [10 x i32]* %arraydecay16.u23_9fixp to i32*, !taffo.info !47
  call void @scale_2d.5_fixp(i32 8, i32 10, i32* %u23_9fixp, i32 1024), !taffo.info !71, !taffo.constinfo !67
  call void @timer_start(), !taffo.constinfo !72
  %u2_30fixp1 = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay17.u23_9fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u23_9fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay18.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u10_22fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay19.u10_22fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u10_22fixp, i32 0, i32 0, !taffo.info !53
  %arraydecay20.u10_22fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u10_22fixp, i32 0, i32 0, !taffo.info !55
  %arraydecay21.flt.1flp = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !60
  call void @kernel_2mm.3_fixp(i32 8, i32 10, i32 12, i32 14, i32 %u2_30fixp1, i32 %u2_30fixp, [10 x i32]* %arraydecay17.u23_9fixp, [12 x i32]* %arraydecay18.u10_22fixp, [10 x i32]* %arraydecay19.u10_22fixp, [14 x i32]* %arraydecay20.u10_22fixp, [14 x float]* %arraydecay21.flt.1flp), !taffo.info !62, !taffo.constinfo !63
  call void @timer_stop(), !taffo.constinfo !72
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !77
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !75
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx.flt.1flp = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %i.0, !taffo.info !57, !taffo.initweight !61, !taffo.target !60
  %arrayidx25.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %arrayidx.flt.1flp, i32 0, i32 %j.0, !taffo.info !57, !taffo.initweight !79, !taffo.target !60
  %.flt.fallback.1flp = load float, float* %arrayidx25.flt.1flp, align 4, !taffo.info !57, !taffo.initweight !80, !taffo.target !60
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !0
  store float %.flt.fallback.1flp, float* %arrayidx27, align 4, !taffo.info !70, !taffo.target !60
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !83

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !84, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !87
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !27 !taffo.funinfo !88 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !95
  %add = add nsw i32 %mul, %j.0, !taffo.info !95
  %rem = srem i32 %add, 20, !taffo.info !95, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !93
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !64
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !87
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !97

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !103 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %A.u10_22fixp, [10 x i32]* noundef %B.u10_22fixp, [14 x i32]* noundef %C.u10_22fixp, [14 x float]* noundef %D, [10 x i32]* noundef %tmp.u23_9fixp) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !108 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !62, !taffo.constinfo !109
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !65, !taffo.constinfo !111
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !114, !taffo.initweight !59
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !114, !taffo.initweight !80

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !117, !taffo.initweight !59
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !117, !taffo.initweight !80

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !119, !taffo.initweight !79
  %add = add nsw i32 %mul, 1, !taffo.info !121, !taffo.initweight !80, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !123, !taffo.initweight !125
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !126
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !128
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !126
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !128
  %2 = ashr i32 %0, 1, !taffo.info !126
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !130
  %div.u3_29fixp = shl i32 %3, 2, !taffo.info !133
  %arrayidx.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u10_22fixp, i32 %i.0, !taffo.info !134
  %arrayidx7.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u10_22fixp, i32 0, i32 %j.0, !taffo.info !134
  %4 = lshr i32 %div.u3_29fixp, 7, !taffo.info !133
  store i32 %4, i32* %arrayidx7.u10_22fixp, align 4, !taffo.info !135
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !138

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !139, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !141

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !114, !taffo.initweight !59
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !114, !taffo.initweight !80

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !117, !taffo.initweight !59
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !117, !taffo.initweight !80

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !142, !taffo.initweight !79
  %rem21 = srem i32 %mul20, %nj, !taffo.info !144, !taffo.initweight !80
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !145
  %conv23.u4_28fixp = shl i32 %nj, 28, !taffo.info !146
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !145
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !146
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !147
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !149
  %arrayidx25.u10_22fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u10_22fixp, i32 %i.1, !taffo.info !151
  %arrayidx26.u10_22fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.u10_22fixp, i32 0, i32 %j.1, !taffo.info !151
  %8 = lshr i32 %div24.u1_31fixp, 9, !taffo.info !149
  store i32 %8, i32* %arrayidx26.u10_22fixp, align 4, !taffo.info !135
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !152

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !139, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !153

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !114, !taffo.initweight !59
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !114, !taffo.initweight !80

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !117, !taffo.initweight !59
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !117, !taffo.initweight !80

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !154, !taffo.initweight !79, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !156, !taffo.initweight !79
  %add43 = add nsw i32 %mul42, 1, !taffo.info !158, !taffo.initweight !80, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !160, !taffo.initweight !125
  %conv45.u4_28fixp = shl i32 %rem44, 28, !taffo.info !162
  %conv46.u4_28fixp = shl i32 %nl, 28, !taffo.info !163
  %9 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !162
  %10 = lshr i32 %conv46.u4_28fixp, 1, !taffo.info !163
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !164
  %div47.u1_31fixp = shl i32 %11, 4, !taffo.info !166
  %arrayidx48.u10_22fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u10_22fixp, i32 %i.2, !taffo.info !167
  %arrayidx49.u10_22fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx48.u10_22fixp, i32 0, i32 %j.2, !taffo.info !167
  %12 = lshr i32 %div47.u1_31fixp, 9, !taffo.info !166
  store i32 %12, i32* %arrayidx49.u10_22fixp, align 4, !taffo.info !135
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !168

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !139, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !169

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !114, !taffo.initweight !59
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !114, !taffo.initweight !80

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !117, !taffo.initweight !59
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !117, !taffo.initweight !80

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !170, !taffo.initweight !79, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !172, !taffo.initweight !79
  %rem66 = srem i32 %mul65, %nk, !taffo.info !174, !taffo.initweight !80
  %conv67.u4_28fixp = shl i32 %rem66, 28, !taffo.info !176
  %conv68.u4_28fixp = shl i32 %nk, 28, !taffo.info !177
  %13 = lshr i32 %conv67.u4_28fixp, 1, !taffo.info !176
  %14 = lshr i32 %conv68.u4_28fixp, 1, !taffo.info !177
  %15 = call i32 @llvm.sdiv.fix.i32(i32 %13, i32 %14, i32 27), !taffo.info !178
  %div69.u1_31fixp = shl i32 %15, 4, !taffo.info !180
  %16 = uitofp i32 %div69.u1_31fixp to float, !taffo.info !180
  %17 = fdiv float %16, 0x41E0000000000000, !taffo.info !180
  %arrayidx70.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.info !181, !taffo.initweight !79
  %arrayidx71.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70.flt.1flp, i32 0, i32 %j.3, !taffo.info !181, !taffo.initweight !79
  store float %17, float* %arrayidx71.flt.1flp, align 4, !taffo.info !135
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !182

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !139, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !183

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !114, !taffo.initweight !59
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !114, !taffo.initweight !80

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !117, !taffo.initweight !59
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !116, !taffo.initweight !79
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !117, !taffo.initweight !80

for.body85:                                       ; preds = %for.cond82
  %arrayidx86.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u23_9fixp, i32 %i.4, !taffo.info !184
  %arrayidx87.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86.u23_9fixp, i32 0, i32 %j.4, !taffo.info !184
  store i32 0, i32* %arrayidx87.u23_9fixp, align 4, !taffo.info !135, !taffo.constinfo !185
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !136, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !186

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !139, !taffo.initweight !79, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !187

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [10 x i32]* noundef %tmp.u23_9fixp, [12 x i32]* noundef %A.u10_22fixp, [10 x i32]* noundef %B.u10_22fixp, [14 x i32]* noundef %C.u10_22fixp, [14 x float]* noundef %D) #0 !taffo.initweight !188 !taffo.funinfo !189 !taffo.sourceFunction !190 {
entry:
  %0 = uitofp i32 %beta.u2_30fixp to float, !taffo.info !45
  %1 = fdiv float %0, 0x41D0000000000000, !taffo.info !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u23_9fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u23_9fixp, i32 0, i32 %j.0, !taffo.info !47
  store i32 0, i32* %arrayidx4.u23_9fixp, align 4, !taffo.info !135, !taffo.constinfo !185
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !75
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !93
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u10_22fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx8.u10_22fixp, i32 0, i32 %k.0, !taffo.info !50
  %u10_22fixp = load i32, i32* %arrayidx9.u10_22fixp, align 4, !taffo.info !191
  %2 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %3 = lshr i32 %u10_22fixp, 1, !taffo.info !191
  %4 = ashr i32 %2, 9, !taffo.info !42
  %5 = ashr i32 %3, 1, !taffo.info !191
  %6 = call i32 @llvm.smul.fix.i32(i32 %4, i32 %5, i32 20), !taffo.info !193
  %mul.u11_21fixp = shl i32 %6, 1, !taffo.info !196
  %arrayidx10.u10_22fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u10_22fixp, i32 %k.0, !taffo.info !53
  %arrayidx11.u10_22fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10.u10_22fixp, i32 0, i32 %j.0, !taffo.info !53
  %u10_22fixp3 = load i32, i32* %arrayidx11.u10_22fixp, align 4, !taffo.info !53
  %7 = lshr i32 %mul.u11_21fixp, 1, !taffo.info !196
  %8 = lshr i32 %u10_22fixp3, 1, !taffo.info !53
  %9 = ashr i32 %7, 12, !taffo.info !196
  %10 = ashr i32 %8, 13, !taffo.info !53
  %11 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %10, i32 8), !taffo.info !197
  %mul12.u23_9fixp = shl i32 %11, 1, !taffo.info !200
  %arrayidx13.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u23_9fixp, i32 %i.0, !taffo.info !47
  %arrayidx14.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13.u23_9fixp, i32 0, i32 %j.0, !taffo.info !47
  %u23_9fixp = load i32, i32* %arrayidx14.u23_9fixp, align 4, !taffo.info !47
  %add.u23_9fixp = add i32 %u23_9fixp, %mul12.u23_9fixp, !taffo.info !201
  store i32 %add.u23_9fixp, i32* %arrayidx14.u23_9fixp, align 4, !taffo.info !71
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !203

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !204

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !205

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !75
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !93
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !75
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !93
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !57, !taffo.initweight !206
  %arrayidx28.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27.flt.1flp, i32 0, i32 %j.1, !taffo.info !57, !taffo.initweight !207
  %.flt.fallback.1flp = load float, float* %arrayidx28.flt.1flp, align 4, !taffo.info !57, !taffo.initweight !208
  %mul29.1flp = fmul float %.flt.fallback.1flp, %1, !taffo.info !209
  store float %mul29.1flp, float* %arrayidx28.flt.1flp, align 4, !taffo.info !65
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !75
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !93
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u23_9fixp, i32 %i.1, !taffo.info !47
  %arrayidx34.u23_9fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33.u23_9fixp, i32 0, i32 %k.1, !taffo.info !47
  %u23_9fixp2 = load i32, i32* %arrayidx34.u23_9fixp, align 4, !taffo.info !47
  %12 = uitofp i32 %u23_9fixp2 to float, !taffo.info !47
  %13 = fdiv float %12, 5.120000e+02, !taffo.info !47
  %arrayidx35.u10_22fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u10_22fixp, i32 %k.1, !taffo.info !55
  %arrayidx36.u10_22fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx35.u10_22fixp, i32 0, i32 %j.1, !taffo.info !55
  %u10_22fixp4 = load i32, i32* %arrayidx36.u10_22fixp, align 4, !taffo.info !55
  %14 = uitofp i32 %u10_22fixp4 to float, !taffo.info !55
  %15 = fdiv float %14, 0x4150000000000000, !taffo.info !55
  %mul37.1flp = fmul float %13, %15, !taffo.info !212
  %arrayidx38.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !57, !taffo.initweight !206
  %arrayidx39.flt.1flp = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38.flt.1flp, i32 0, i32 %j.1, !taffo.info !57, !taffo.initweight !207
  %.flt.fallback.1flp1 = load float, float* %arrayidx39.flt.1flp, align 4, !taffo.info !57, !taffo.initweight !208
  %add40.1flp = fadd float %.flt.fallback.1flp1, %mul37.1flp, !taffo.info !215
  store float %add40.1flp, float* %arrayidx39.flt.1flp, align 4, !taffo.info !70
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !218

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !219

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !220

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !222 !taffo.sourceFunction !223 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %0, !taffo.info !50
  %arrayidx4.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx.u10_22fixp, i32 %j.0, !taffo.info !50
  %u10_22fixp = load i32, i32* %arrayidx4.u10_22fixp, align 4, !taffo.info !50
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !224
  %1 = lshr i32 %u10_22fixp, 1, !taffo.info !50
  %2 = lshr i32 %conv.u11_21fixp, 1, !taffo.info !224
  %3 = ashr i32 %1, 10, !taffo.info !50
  %4 = ashr i32 %2, 9, !taffo.info !224
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 11), !taffo.info !225
  %mul.u20_12fixp = shl i32 %5, 1, !taffo.info !228
  %6 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx5.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %6, !taffo.info !50
  %arrayidx6.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx5.u10_22fixp, i32 %j.0, !taffo.info !50
  %7 = shl i32 %mul.u20_12fixp, 10, !taffo.info !228
  store i32 %7, i32* %arrayidx6.u10_22fixp, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !230

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !231

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !232 !taffo.sourceFunction !223 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx.flt.1flp = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !57, !taffo.initweight !207
  %arrayidx4.flt.1flp = getelementptr inbounds float, float* %arrayidx.flt.1flp, i32 %j.0, !taffo.info !57, !taffo.initweight !208
  %.flt.fallback.1flp = load float, float* %arrayidx4.flt.1flp, align 4, !taffo.info !57, !taffo.initweight !233
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !224
  %1 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !224
  %2 = fdiv float %1, 0x4140000000000000, !taffo.info !224
  %mul.1flp = fmul float %.flt.fallback.1flp, %2, !taffo.info !234
  %3 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx5.flt.1flp = getelementptr inbounds float, float* %val, i32 %3, !taffo.info !57, !taffo.initweight !207
  %arrayidx6.flt.1flp = getelementptr inbounds float, float* %arrayidx5.flt.1flp, i32 %j.0, !taffo.info !57, !taffo.initweight !208
  store float %mul.1flp, float* %arrayidx6.flt.1flp, align 4, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !237

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !238

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u23_9fixp, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !239 !taffo.sourceFunction !223 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %0, !taffo.info !47
  %arrayidx4.u23_9fixp = getelementptr inbounds i32, i32* %arrayidx.u23_9fixp, i32 %j.0, !taffo.info !47
  %u23_9fixp = load i32, i32* %arrayidx4.u23_9fixp, align 4, !taffo.info !47
  %1 = uitofp i32 %u23_9fixp to float, !taffo.info !47
  %2 = fdiv float %1, 5.120000e+02, !taffo.info !47
  %conv.u11_21fixp = shl i32 %factor, 21, !taffo.info !224
  %3 = uitofp i32 %conv.u11_21fixp to float, !taffo.info !224
  %4 = fdiv float %3, 0x4140000000000000, !taffo.info !224
  %mul.1flp = fmul float %2, %4, !taffo.info !240
  %5 = mul nsw i32 %i.0, %m, !taffo.info !95
  %arrayidx5.u23_9fixp = getelementptr inbounds i32, i32* %val.u23_9fixp, i32 %5, !taffo.info !47
  %arrayidx6.u23_9fixp = getelementptr inbounds i32, i32* %arrayidx5.u23_9fixp, i32 %j.0, !taffo.info !47
  %6 = fmul float 5.120000e+02, %mul.1flp, !taffo.info !240
  %7 = fptoui float %6 to i32, !taffo.info !240
  store i32 %7, i32* %arrayidx6.u23_9fixp, align 4, !taffo.info !71
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !243

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !244

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x42132E6660000000}
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
!32 = distinct !{null, null, null, null, null}
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
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 9}
!49 = !{double 0.000000e+00, double 0x4152733320000000}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 22}
!52 = !{double 0.000000e+00, double 8.960000e+02}
!53 = !{!51, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x408CCCCCC0379314}
!55 = !{!51, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x408DB6DB60285EC4}
!57 = !{!58, !1, i1 false, i2 -1}
!58 = !{!"float", i32 1, double 0x42132E6660000000}
!59 = !{i32 0}
!60 = !{!"D"}
!61 = !{i32 1}
!62 = !{i1 false, !44, i1 false, i2 -1}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{i1 false, i1 false, i1 false}
!65 = !{i1 false, !46, i1 false, i2 -1}
!66 = !{i1 false, !52, i1 false, i2 -1}
!67 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!68 = !{i1 false, !54, i1 false, i2 -1}
!69 = !{i1 false, !56, i1 false, i2 -1}
!70 = !{i1 false, !1, i1 false, i2 -1}
!71 = !{i1 false, !49, i1 false, i2 -1}
!72 = !{i1 false}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 9.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.000000e+00}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 0.000000e+00, double 1.350000e+02}
!79 = !{i32 2}
!80 = !{i32 3}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.350000e+02}
!83 = distinct !{!83, !23}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.000000e+00, double 9.000000e+00}
!86 = distinct !{!86, !23}
!87 = !{i1 false, i1 false, i1 false, i1 false}
!88 = !{i32 1, !89, i32 1, !91, i32 1, !0}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 8.000000e+00, double 8.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.400000e+01, double 1.400000e+01}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 1.000000e+00, double 1.000000e+00}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 0.000000e+00, double 0.000000e+00}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{i32 1, i32 -1}
!100 = !{i32 1, !42, i32 1, !101}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 1.024000e+03, double 1.024000e+03}
!103 = !{void (float*, i32)* @scale_scalar}
!104 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!105 = !{i32 1, !89, i32 1, !16, i32 1, !106, i32 1, !91, i32 1, !42, i32 1, !45, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !47}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 1.200000e+01, double 1.200000e+01}
!108 = distinct !{null}
!109 = !{!110, i1 false}
!110 = !{i1 false, !44, i1 false, i2 0}
!111 = !{!112, i1 false}
!112 = !{i1 false, !113, i1 false, i2 0}
!113 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 1.200000e+01}
!116 = !{i1 false, !76, i1 false, i2 -1}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 0.000000e+00, double 1.400000e+01}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 1.680000e+02}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double 1.000000e+00, double 1.690000e+02}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 7.000000e+00}
!125 = !{i32 4}
!126 = !{!127, !124, i1 false, i2 -1}
!127 = !{!"fixp", i32 32, i32 29}
!128 = !{!129, !90, i1 false, i2 1}
!129 = !{!"fixp", i32 32, i32 28}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"fixp", i32 -32, i32 27}
!132 = !{double 0.000000e+00, double 8.750000e-01}
!133 = !{!127, !132, i1 false, i2 -1}
!134 = !{!51, !52, i1 false, i2 1}
!135 = !{i1 false, i1 false, i1 false, i2 1}
!136 = !{i1 false, !137, i1 false, i2 -1}
!137 = !{double 1.000000e+00, double 1.500000e+01}
!138 = distinct !{!138, !23}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double 1.000000e+00, double 1.300000e+01}
!141 = distinct !{!141, !23}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0.000000e+00, double 1.800000e+02}
!144 = !{i1 false, !74, i1 false, i2 -1}
!145 = !{!129, !74, i1 false, i2 -1}
!146 = !{!129, !17, i1 false, i2 1}
!147 = !{!131, !148, i1 false, i2 -1}
!148 = !{double 0.000000e+00, double 9.000000e-01}
!149 = !{!150, !148, i1 false, i2 -1}
!150 = !{!"fixp", i32 32, i32 31}
!151 = !{!51, !54, i1 false, i2 1}
!152 = distinct !{!152, !23}
!153 = distinct !{!153, !23}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 3.000000e+00, double 1.700000e+01}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 2.040000e+02}
!158 = !{i1 false, !159, i1 false, i2 -1}
!159 = !{double 1.000000e+00, double 2.050000e+02}
!160 = !{i1 false, !161, i1 false, i2 -1}
!161 = !{double 0.000000e+00, double 1.300000e+01}
!162 = !{!129, !161, i1 false, i2 -1}
!163 = !{!129, !92, i1 false, i2 1}
!164 = !{!131, !165, i1 false, i2 -1}
!165 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!166 = !{!150, !165, i1 false, i2 -1}
!167 = !{!51, !56, i1 false, i2 1}
!168 = distinct !{!168, !23}
!169 = distinct !{!169, !23}
!170 = !{i1 false, !171, i1 false, i2 -1}
!171 = !{double 2.000000e+00, double 1.600000e+01}
!172 = !{i1 false, !173, i1 false, i2 -1}
!173 = !{double 0.000000e+00, double 1.920000e+02}
!174 = !{i1 false, !175, i1 false, i2 -1}
!175 = !{double 0.000000e+00, double 1.100000e+01}
!176 = !{!129, !175, i1 false, i2 -1}
!177 = !{!129, !107, i1 false, i2 1}
!178 = !{!131, !179, i1 false, i2 -1}
!179 = !{double 0.000000e+00, double 0x3FED555555555555}
!180 = !{!150, !179, i1 false, i2 -1}
!181 = !{!58, !1, i1 false, i2 1}
!182 = distinct !{!182, !23}
!183 = distinct !{!183, !23}
!184 = !{!48, !49, i1 false, i2 1}
!185 = !{!95, i1 false}
!186 = distinct !{!186, !23}
!187 = distinct !{!187, !23}
!188 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!189 = !{i32 1, !89, i32 1, !16, i32 1, !106, i32 1, !91, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57}
!190 = distinct !{null}
!191 = !{!192, !52, i1 false, i2 -1}
!192 = !{!"fixp", i32 32, i32 21}
!193 = !{!194, !195, i1 false, i2 -1}
!194 = !{!"fixp", i32 -32, i32 20}
!195 = !{double 0.000000e+00, double 1.344000e+03}
!196 = !{!192, !195, i1 false, i2 -1}
!197 = !{!198, !199, i1 false, i2 -1}
!198 = !{!"fixp", i32 -32, i32 8}
!199 = !{double 0.000000e+00, double 0x4132E6665E247885}
!200 = !{!48, !199, i1 false, i2 -1}
!201 = !{!48, !202, i1 false, i2 -1}
!202 = !{double 0.000000e+00, double 0x41572CCCB7891E21}
!203 = distinct !{!203, !23}
!204 = distinct !{!204, !23}
!205 = distinct !{!205, !23}
!206 = !{i32 5}
!207 = !{i32 6}
!208 = !{i32 7}
!209 = !{!210, !211, i1 false, i2 -1}
!210 = !{!"float", i32 1, double 0x4217047AD9999999}
!211 = !{double 0.000000e+00, double 0x4217047AD9999999}
!212 = !{!213, !214, i1 false, i2 -1}
!213 = !{!"float", i32 1, double 0x41F121D4039CC303}
!214 = !{double 0.000000e+00, double 0x41F121D4039CC303}
!215 = !{!216, !217, i1 false, i2 -1}
!216 = !{!"float", i32 1, double 0x421776DB60E730C1}
!217 = !{double 0.000000e+00, double 0x421776DB60E730C1}
!218 = distinct !{!218, !23}
!219 = distinct !{!219, !23}
!220 = distinct !{!220, !23}
!221 = !{i32 -1, i32 -1, i32 3, i32 -1}
!222 = !{i32 1, !89, i32 1, !106, i32 1, !50, i32 1, !101}
!223 = !{void (i32, i32, float*, i32)* @scale_2d}
!224 = !{!192, !102, i1 false, i2 1}
!225 = !{!226, !227, i1 false, i2 -1}
!226 = !{!"fixp", i32 -32, i32 11}
!227 = !{double 0.000000e+00, double 9.175040e+05}
!228 = !{!229, !227, i1 false, i2 -1}
!229 = !{!"fixp", i32 32, i32 12}
!230 = distinct !{!230, !23}
!231 = distinct !{!231, !23}
!232 = !{i32 1, !89, i32 1, !91, i32 1, !57, i32 1, !101}
!233 = !{i32 8}
!234 = !{!235, !236, i1 false, i2 -1}
!235 = !{!"float", i32 1, double 0x42B32E6660000000}
!236 = !{double 0.000000e+00, double 0x42B32E6660000000}
!237 = distinct !{!237, !23}
!238 = distinct !{!238, !23}
!239 = !{i32 1, !89, i32 1, !16, i32 1, !47, i32 1, !101}
!240 = !{!241, !242, i1 false, i2 -1}
!241 = !{!"float", i32 1, double 0x41F2733320000000}
!242 = !{double 0.000000e+00, double 0x41F2733320000000}
!243 = distinct !{!243, !23}
!244 = distinct !{!244, !23}
