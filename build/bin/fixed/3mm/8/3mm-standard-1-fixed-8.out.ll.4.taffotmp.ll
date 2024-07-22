; ModuleID = './build/bin/fixed/3mm/8/3mm-standard-1-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %E = alloca [6 x [8 x float]], align 4, !taffo.info !28, !taffo.initweight !31
  %A = alloca [6 x [10 x float]], align 4, !taffo.info !32, !taffo.initweight !31
  %B = alloca [10 x [8 x float]], align 4, !taffo.info !34, !taffo.initweight !31
  %F = alloca [8 x [12 x float]], align 4, !taffo.info !36, !taffo.initweight !31
  %C = alloca [8 x [14 x float]], align 4, !taffo.info !38, !taffo.initweight !31
  %D = alloca [14 x [12 x float]], align 4, !taffo.info !40, !taffo.initweight !31
  %G = alloca [6 x [12 x float]], align 4, !taffo.info !42, !taffo.initweight !31, !taffo.target !43
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.info !44, !taffo.initweight !45
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.info !44, !taffo.initweight !45
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.info !44, !taffo.initweight !45
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.info !44, !taffo.initweight !45
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.info !44, !taffo.initweight !45
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.info !44, !taffo.initweight !45
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.info !44, !taffo.initweight !45, !taffo.target !43
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !32, !taffo.initweight !45
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !34, !taffo.initweight !45
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !38, !taffo.initweight !45
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !40, !taffo.initweight !45
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !28, !taffo.initweight !45
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !36, !taffo.initweight !45
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !42, !taffo.initweight !45, !taffo.target !43
  call void @init_array.2(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !48, !taffo.originalCall !49
  call void @timer_start(), !taffo.constinfo !50
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !28, !taffo.initweight !45
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !32, !taffo.initweight !45
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !34, !taffo.initweight !45
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !36, !taffo.initweight !45
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !38, !taffo.initweight !45
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !40, !taffo.initweight !45
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !42, !taffo.initweight !45, !taffo.target !43
  call void @kernel_3mm.1(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [8 x float]* noundef %arraydecay14, [10 x float]* noundef %arraydecay15, [8 x float]* noundef %arraydecay16, [12 x float]* noundef %arraydecay17, [14 x float]* noundef %arraydecay18, [12 x float]* noundef %arraydecay19, [12 x float]* noundef %arraydecay20), !taffo.info !46, !taffo.initweight !47, !taffo.constinfo !48, !taffo.originalCall !51
  call void @timer_stop(), !taffo.constinfo !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !56
  %cmp22 = icmp slt i32 %j.0, 12, !taffo.info !54
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.info !42, !taffo.initweight !45, !taffo.target !43
  %arrayidx24 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !47, !taffo.target !43
  %0 = load float, float* %arrayidx24, align 4, !taffo.info !42, !taffo.initweight !58, !taffo.target !43
  %arrayidx25 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx25, i32 0, i32 %j.0, !taffo.info !0
  store float %0, float* %arrayidx26, align 4, !taffo.info !59, !taffo.initweight !60, !taffo.target !43
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %inc = add nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !63

for.end:                                          ; preds = %for.cond21
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !66

for.end29:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !67
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !68 !taffo.funinfo !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !54
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !76
  %add = add nsw i32 %mul, %j.0, !taffo.info !76
  %rem = srem i32 %add, 20, !taffo.info !76, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !74
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !79

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !51 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !54
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !28, !taffo.initweight !87
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !88
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !89, !taffo.initweight !87, !taffo.constinfo !90
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !54
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !74
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !32, !taffo.initweight !87
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !32, !taffo.initweight !88
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !32, !taffo.initweight !91
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0, !taffo.info !34, !taffo.initweight !87
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !88
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !34, !taffo.initweight !91
  %mul = fmul float %0, %1, !taffo.info !92, !taffo.initweight !94
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !28, !taffo.initweight !87
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !88
  %2 = load float, float* %arrayidx13, align 4, !taffo.info !28, !taffo.initweight !91
  %add = fadd float %2, %mul, !taffo.info !95, !taffo.initweight !94
  store float %add, float* %arrayidx13, align 4, !taffo.info !46, !taffo.initweight !91
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !97

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !98

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !99

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !54
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !74
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !54
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !74
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !36, !taffo.initweight !87
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1, !taffo.info !36, !taffo.initweight !88
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.info !89, !taffo.initweight !87, !taffo.constinfo !90
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !54
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !74
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1, !taffo.info !38, !taffo.initweight !87
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1, !taffo.info !38, !taffo.initweight !88
  %3 = load float, float* %arrayidx32, align 4, !taffo.info !38, !taffo.initweight !91
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1, !taffo.info !40, !taffo.initweight !87
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !40, !taffo.initweight !88
  %4 = load float, float* %arrayidx34, align 4, !taffo.info !40, !taffo.initweight !91
  %mul35 = fmul float %3, %4, !taffo.info !100, !taffo.initweight !94
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !36, !taffo.initweight !87
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1, !taffo.info !36, !taffo.initweight !88
  %5 = load float, float* %arrayidx37, align 4, !taffo.info !36, !taffo.initweight !91
  %add38 = fadd float %5, %mul35, !taffo.info !102, !taffo.initweight !94
  store float %add38, float* %arrayidx37, align 4, !taffo.info !104, !taffo.initweight !91
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !105

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !106

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !107

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !54
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !74
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !54
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !74
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !42, !taffo.initweight !87
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2, !taffo.info !42, !taffo.initweight !88
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.info !89, !taffo.initweight !87, !taffo.constinfo !90
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !54
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !74
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2, !taffo.info !28, !taffo.initweight !87
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2, !taffo.info !28, !taffo.initweight !88
  %6 = load float, float* %arrayidx60, align 4, !taffo.info !28, !taffo.initweight !91
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2, !taffo.info !36, !taffo.initweight !87
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2, !taffo.info !36, !taffo.initweight !88
  %7 = load float, float* %arrayidx62, align 4, !taffo.info !36, !taffo.initweight !91
  %mul63 = fmul float %6, %7, !taffo.info !108, !taffo.initweight !94
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !42, !taffo.initweight !87
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2, !taffo.info !42, !taffo.initweight !88
  %8 = load float, float* %arrayidx65, align 4, !taffo.info !42, !taffo.initweight !91
  %add66 = fadd float %8, %mul63, !taffo.info !110, !taffo.initweight !94
  store float %add66, float* %arrayidx65, align 4, !taffo.info !59, !taffo.initweight !91
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !112

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !113

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !114

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !81 !taffo.funinfo !115 !taffo.sourceFunction !49 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !116, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !119, !taffo.initweight !58

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !119, !taffo.initweight !58

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !121, !taffo.initweight !47
  %add = add nsw i32 %mul, 1, !taffo.info !123, !taffo.initweight !58, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !125, !taffo.initweight !60
  %conv = sitofp i32 %rem to float, !taffo.info !127, !taffo.initweight !87
  %mul6 = mul nsw i32 5, %ni, !taffo.info !129, !taffo.constinfo !21
  %conv7 = sitofp i32 %mul6 to float, !taffo.info !131
  %div = fdiv float %conv, %conv7, !taffo.info !133, !taffo.initweight !88
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !135, !taffo.initweight !47
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !135, !taffo.initweight !47
  store float %div, float* %arrayidx8, align 4, !taffo.info !89, !taffo.initweight !58
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !138

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !139

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !116, !taffo.initweight !31
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !119, !taffo.initweight !58

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !116, !taffo.initweight !31
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !119, !taffo.initweight !58

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !140, !taffo.initweight !47
  %add22 = add nsw i32 %mul21, 2, !taffo.info !142, !taffo.initweight !58, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !144, !taffo.initweight !60
  %conv24 = sitofp i32 %rem23 to float, !taffo.info !145, !taffo.initweight !87
  %mul25 = mul nsw i32 5, %nj, !taffo.info !146, !taffo.constinfo !21
  %conv26 = sitofp i32 %mul25 to float, !taffo.info !148
  %div27 = fdiv float %conv24, %conv26, !taffo.info !150, !taffo.initweight !88
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.info !151, !taffo.initweight !47
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.info !151, !taffo.initweight !47
  store float %div27, float* %arrayidx29, align 4, !taffo.info !89, !taffo.initweight !58
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !152

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !153

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !116, !taffo.initweight !31
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !119, !taffo.initweight !58

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !116, !taffo.initweight !31
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !119, !taffo.initweight !58

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !154, !taffo.initweight !47, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !156, !taffo.initweight !47
  %rem46 = srem i32 %mul45, %nl, !taffo.info !158, !taffo.initweight !58
  %conv47 = sitofp i32 %rem46 to float, !taffo.info !160, !taffo.initweight !60
  %mul48 = mul nsw i32 5, %nl, !taffo.info !162, !taffo.constinfo !21
  %conv49 = sitofp i32 %mul48 to float, !taffo.info !164
  %div50 = fdiv float %conv47, %conv49, !taffo.info !165, !taffo.initweight !87
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.info !167, !taffo.initweight !47
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.info !167, !taffo.initweight !47
  store float %div50, float* %arrayidx52, align 4, !taffo.info !89, !taffo.initweight !58
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !168

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !169

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !116, !taffo.initweight !31
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !119, !taffo.initweight !58

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !116, !taffo.initweight !31
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !119, !taffo.initweight !58

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !170, !taffo.initweight !47, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !172, !taffo.initweight !47
  %add69 = add nsw i32 %mul68, 2, !taffo.info !174, !taffo.initweight !58, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !176, !taffo.initweight !60
  %conv71 = sitofp i32 %rem70 to float, !taffo.info !178, !taffo.initweight !87
  %mul72 = mul nsw i32 5, %nk, !taffo.info !179, !taffo.constinfo !21
  %conv73 = sitofp i32 %mul72 to float, !taffo.info !181
  %div74 = fdiv float %conv71, %conv73, !taffo.info !182, !taffo.initweight !88
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.info !182, !taffo.initweight !47
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.info !182, !taffo.initweight !47
  store float %div74, float* %arrayidx76, align 4, !taffo.info !89, !taffo.initweight !58
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !183

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !184

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !116, !taffo.initweight !31
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !119, !taffo.initweight !58

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !116, !taffo.initweight !31
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !119, !taffo.initweight !58

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.info !185, !taffo.initweight !47
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.info !185, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.info !89, !taffo.initweight !58, !taffo.constinfo !90
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !186

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !187

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !116, !taffo.initweight !31
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !119, !taffo.initweight !58

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !116, !taffo.initweight !31
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !119, !taffo.initweight !58

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.info !188, !taffo.initweight !47
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.info !188, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.info !89, !taffo.initweight !58, !taffo.constinfo !90
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !189

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !190

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !116, !taffo.initweight !31
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !119, !taffo.initweight !58

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !116, !taffo.initweight !31
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !118, !taffo.initweight !47
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !119, !taffo.initweight !58

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.info !191, !taffo.initweight !47
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.info !191, !taffo.initweight !47
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.info !89, !taffo.initweight !58, !taffo.constinfo !90
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !192

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !136, !taffo.initweight !47, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !193

for.end130:                                       ; preds = %for.cond115
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 5.428300e-02}
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
!29 = !{!"fixp", i32 32, i32 31}
!30 = !{double 0.000000e+00, double 1.083330e-01}
!31 = !{i32 0}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 0.000000e+00, double 1.666670e-01}
!34 = !{!29, !35, i1 false, i2 -1}
!35 = !{double 0.000000e+00, double 1.750000e-01}
!36 = !{!29, !37, i1 false, i2 -1}
!37 = !{double 0.000000e+00, double 1.280000e-01}
!38 = !{!29, !39, i1 false, i2 -1}
!39 = !{double 0.000000e+00, double 1.833330e-01}
!40 = !{!29, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 1.800000e-01}
!42 = !{!29, !1, i1 false, i2 -1}
!43 = !{!"G"}
!44 = !{!29, i1 false, i1 false, i2 -1}
!45 = !{i32 1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i32 2}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = distinct !{null}
!50 = !{i1 false}
!51 = distinct !{null}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 7.000000e+00}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.000000e+00}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 9.100000e+01}
!58 = !{i32 3}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i32 4}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 9.100000e+01}
!63 = distinct !{!63, !23}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 7.000000e+00}
!66 = distinct !{!66, !23}
!67 = !{i1 false, i1 false, i1 false, i1 false}
!68 = !{i32 -1, i32 -1, i32 -1}
!69 = !{i32 1, !70, i32 1, !72, i32 1, !0}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 6.000000e+00, double 6.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.200000e+01, double 1.200000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 0.000000e+00}
!78 = !{i1 false, i1 false, i1 false}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!82 = !{i32 1, !70, i32 1, !83, i32 1, !16, i32 1, !72, i32 1, !85, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !36, i32 1, !38, i32 1, !40, i32 1, !42}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 8.000000e+00, double 8.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.400000e+01, double 1.400000e+01}
!87 = !{i32 5}
!88 = !{i32 6}
!89 = !{i1 false, i1 false, i1 false, i2 1}
!90 = !{!76, i1 false}
!91 = !{i32 7}
!92 = !{!29, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x3F9DDDE1C806946F}
!94 = !{i32 8}
!95 = !{!29, !96, i1 false, i2 -1}
!96 = !{double 0.000000e+00, double 0x3FC199974B0AC04D}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = !{!29, !101, i1 false, i2 -1}
!101 = !{double 0.000000e+00, double 0x3FA0E55E3E23D217}
!102 = !{!29, !103, i1 false, i2 -1}
!103 = !{double 0.000000e+00, double 0x3FC49BA5627A9E82}
!104 = !{i1 false, !37, i1 false, i2 -1}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = !{!29, !109, i1 false, i2 -1}
!109 = !{double 0.000000e+00, double 0x3F8C661AC4AFFB63}
!110 = !{!29, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x3FB17240F6508FF6}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{i32 1, !70, i32 1, !83, i32 1, !16, i32 1, !72, i32 1, !85, i32 1, !32, i32 1, !34, i32 1, !38, i32 1, !40, i32 1, !28, i32 1, !36, i32 1, !42}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 0.000000e+00, double 1.500000e+01}
!118 = !{i1 false, !55, i1 false, i2 1}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 1.400000e+01}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 1.960000e+02}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 1.000000e+00, double 1.970000e+02}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 0.000000e+00, double 5.000000e+00}
!127 = !{!128, !126, i1 false, i2 1}
!128 = !{!"fixp", i32 32, i32 29}
!129 = !{i1 false, !130, i1 false, i2 0}
!130 = !{double 3.000000e+01, double 3.000000e+01}
!131 = !{!132, !130, i1 false, i2 1}
!132 = !{!"fixp", i32 32, i32 27}
!133 = !{!128, !134, i1 false, i2 1}
!134 = !{double 0.000000e+00, double 0x3FC5555555555555}
!135 = !{!29, !33, i1 false, i2 1}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 1.000000e+00, double 1.500000e+01}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 2.100000e+02}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 2.000000e+00, double 2.120000e+02}
!144 = !{i1 false, !53, i1 false, i2 1}
!145 = !{!128, !53, i1 false, i2 1}
!146 = !{i1 false, !147, i1 false, i2 0}
!147 = !{double 4.000000e+01, double 4.000000e+01}
!148 = !{!149, !147, i1 false, i2 1}
!149 = !{!"fixp", i32 32, i32 26}
!150 = !{!128, !35, i1 false, i2 1}
!151 = !{!29, !35, i1 false, i2 1}
!152 = distinct !{!152, !23}
!153 = distinct !{!153, !23}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 3.000000e+00, double 1.700000e+01}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 0.000000e+00, double 2.380000e+02}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 1.100000e+01}
!160 = !{!161, !159, i1 false, i2 1}
!161 = !{!"fixp", i32 32, i32 28}
!162 = !{i1 false, !163, i1 false, i2 0}
!163 = !{double 6.000000e+01, double 6.000000e+01}
!164 = !{!149, !163, i1 false, i2 1}
!165 = !{!29, !166, i1 false, i2 1}
!166 = !{double 0.000000e+00, double 0x3FC7777777777777}
!167 = !{!29, !39, i1 false, i2 1}
!168 = distinct !{!168, !23}
!169 = distinct !{!169, !23}
!170 = !{i1 false, !171, i1 false, i2 1}
!171 = !{double 2.000000e+00, double 1.600000e+01}
!172 = !{i1 false, !173, i1 false, i2 1}
!173 = !{double 0.000000e+00, double 2.240000e+02}
!174 = !{i1 false, !175, i1 false, i2 1}
!175 = !{double 2.000000e+00, double 2.260000e+02}
!176 = !{i1 false, !177, i1 false, i2 1}
!177 = !{double 0.000000e+00, double 9.000000e+00}
!178 = !{!161, !177, i1 false, i2 1}
!179 = !{i1 false, !180, i1 false, i2 0}
!180 = !{double 5.000000e+01, double 5.000000e+01}
!181 = !{!149, !180, i1 false, i2 1}
!182 = !{!29, !41, i1 false, i2 1}
!183 = distinct !{!183, !23}
!184 = distinct !{!184, !23}
!185 = !{!29, !30, i1 false, i2 1}
!186 = distinct !{!186, !23}
!187 = distinct !{!187, !23}
!188 = !{!29, !37, i1 false, i2 1}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23}
!191 = !{!29, !1, i1 false, i2 1}
!192 = distinct !{!192, !23}
!193 = distinct !{!193, !23}
