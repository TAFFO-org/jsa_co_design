; ModuleID = './build/bin/fixed/symm/24/symm-standard-1-fixed-24.out.ll.3.taffotmp.ll'
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
  %alpha = alloca float, align 4, !taffo.info !28, !taffo.initweight !31
  %beta = alloca float, align 4, !taffo.info !32, !taffo.initweight !31
  %C = alloca [10 x [16 x float]], align 4, !taffo.info !34, !taffo.initweight !31, !taffo.target !36
  %A = alloca [10 x [10 x float]], align 4, !taffo.info !37, !taffo.initweight !31
  %B = alloca [10 x [16 x float]], align 4, !taffo.info !40, !taffo.initweight !31
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !42, !taffo.initweight !43
  %beta2 = bitcast float* %beta to i8*, !taffo.info !42, !taffo.initweight !43
  %C3 = bitcast [10 x [16 x float]]* %C to i8*, !taffo.info !44, !taffo.initweight !43, !taffo.target !36
  %A4 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.info !45, !taffo.initweight !43
  %B5 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.info !42, !taffo.initweight !43
  %arraydecay = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay6 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay7 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @init_array.2(i32 noundef 10, i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [16 x float]* noundef %arraydecay7), !taffo.info !46, !taffo.initweight !43, !taffo.constinfo !47, !taffo.originalCall !48
  call void @timer_start(), !taffo.constinfo !49
  %0 = load float, float* %alpha, align 4, !taffo.info !50, !taffo.initweight !43
  %1 = load float, float* %beta, align 4, !taffo.info !32, !taffo.initweight !43
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay9 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay10 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @kernel_symm.1(i32 noundef 10, i32 noundef 16, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9, [16 x float]* noundef %arraydecay10), !taffo.info !46, !taffo.initweight !52, !taffo.constinfo !47, !taffo.originalCall !53
  call void @timer_stop(), !taffo.constinfo !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !56
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !58
  %cmp12 = icmp slt i32 %j.0, 16, !taffo.info !56
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !52, !taffo.target !36
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !34, !taffo.initweight !60, !taffo.target !36
  %arrayidx15 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx16, align 4, !taffo.info !61, !taffo.initweight !62, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !65

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !70 !taffo.funinfo !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !56
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !56
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !76
  %add = add nsw i32 %mul, %j.0, !taffo.info !76
  %rem = srem i32 %add, 20, !taffo.info !76, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !74
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !78
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
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
define internal void @kernel_symm.1(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !53 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !56
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !56
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !56
  %temp2.0 = phi float [ 0.000000e+00, %for.body3 ], [ %add18, %for.inc ], !taffo.info !83
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !76
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !40, !taffo.initweight !86
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !40, !taffo.initweight !87
  %0 = load float, float* %arrayidx7, align 4, !taffo.info !88, !taffo.initweight !89
  %mul = fmul float %alpha, %0, !taffo.info !90, !taffo.initweight !86
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !86
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !87
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !92, !taffo.initweight !89
  %mul10 = fmul float %mul, %1, !taffo.info !93, !taffo.initweight !87
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %k.0, !taffo.info !34, !taffo.initweight !86
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !87
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !34, !taffo.initweight !89
  %add = fadd float %2, %mul10, !taffo.info !95, !taffo.initweight !89
  store float %add, float* %arrayidx12, align 4, !taffo.info !61, !taffo.initweight !89
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.info !40, !taffo.initweight !86
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !40, !taffo.initweight !87
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !40, !taffo.initweight !89
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !86
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !87
  %4 = load float, float* %arrayidx16, align 4, !taffo.info !92, !taffo.initweight !89
  %mul17 = fmul float %3, %4, !taffo.info !97, !taffo.initweight !98
  %add18 = fadd float %temp2.0, %mul17, !taffo.info !97, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !100

for.end:                                          ; preds = %for.cond4
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !86
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !87
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !34, !taffo.initweight !89
  %mul21 = fmul float %beta, %5, !taffo.info !101, !taffo.initweight !86
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !40, !taffo.initweight !86
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.info !40, !taffo.initweight !87
  %6 = load float, float* %arrayidx23, align 4, !taffo.info !88, !taffo.initweight !89
  %mul24 = fmul float %alpha, %6, !taffo.info !90, !taffo.initweight !86
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !86
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %i.0, !taffo.info !37, !taffo.initweight !87
  %7 = load float, float* %arrayidx26, align 4, !taffo.info !92, !taffo.initweight !89
  %mul27 = fmul float %mul24, %7, !taffo.info !93, !taffo.initweight !87
  %add28 = fadd float %mul21, %mul27, !taffo.info !103, !taffo.initweight !87
  %mul29 = fmul float %alpha, %temp2.0, !taffo.info !106, !taffo.initweight !86
  %add30 = fadd float %add28, %mul29, !taffo.info !107, !taffo.initweight !87
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !86
  %arrayidx32 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx31, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !87
  store float %add30, float* %arrayidx32, align 4, !taffo.info !46, !taffo.initweight !89
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !109

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !110

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !111 !taffo.funinfo !112 !taffo.sourceFunction !48 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !46, !taffo.initweight !62, !taffo.constinfo !113
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !115, !taffo.initweight !62, !taffo.constinfo !116
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !119, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !120, !taffo.initweight !52
  br i1 %cmp, label %for.body, label %for.end17, !taffo.info !121, !taffo.initweight !60

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !122, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !120, !taffo.initweight !52
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !124, !taffo.initweight !60

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.info !126, !taffo.initweight !52
  %rem = srem i32 %add, 100, !taffo.info !126, !taffo.initweight !60, !taffo.constinfo !21
  %conv = sitofp i32 %rem to float, !taffo.info !128, !taffo.initweight !62
  %conv6 = sitofp i32 %m to float, !taffo.info !130
  %div = fdiv float %conv, %conv6, !taffo.info !132, !taffo.initweight !86
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !134, !taffo.initweight !52
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !134, !taffo.initweight !52
  store float %div, float* %arrayidx7, align 4, !taffo.info !135, !taffo.initweight !60
  %add8 = add nsw i32 %n, %i.0, !taffo.info !136, !taffo.initweight !52
  %sub = sub nsw i32 %add8, %j.0, !taffo.info !126, !taffo.initweight !52
  %rem9 = srem i32 %sub, 100, !taffo.info !126, !taffo.initweight !60, !taffo.constinfo !21
  %conv10 = sitofp i32 %rem9 to float, !taffo.info !128, !taffo.initweight !62
  %conv11 = sitofp i32 %m to float, !taffo.info !130
  %div12 = fdiv float %conv10, %conv11, !taffo.info !132, !taffo.initweight !86
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !138, !taffo.initweight !52
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !138, !taffo.initweight !52
  store float %div12, float* %arrayidx14, align 4, !taffo.info !135, !taffo.initweight !60
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !139, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !141

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !142, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !143

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.info !119, !taffo.initweight !31
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.info !120, !taffo.initweight !52
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.info !121, !taffo.initweight !60

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !122, !taffo.initweight !31
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.info !120, !taffo.initweight !52
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.info !121, !taffo.initweight !60

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.info !126, !taffo.initweight !52
  %rem27 = srem i32 %add26, 100, !taffo.info !126, !taffo.initweight !60, !taffo.constinfo !21
  %conv28 = sitofp i32 %rem27 to float, !taffo.info !128, !taffo.initweight !62
  %conv29 = sitofp i32 %m to float, !taffo.info !130
  %div30 = fdiv float %conv28, %conv29, !taffo.info !132, !taffo.initweight !86
  %arrayidx31 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.info !144, !taffo.initweight !52
  %arrayidx32 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx31, i32 0, i32 %j.1, !taffo.info !144, !taffo.initweight !52
  store float %div30, float* %arrayidx32, align 4, !taffo.info !135, !taffo.initweight !60
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !139, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !145

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.info !142, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !122, !taffo.initweight !31
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.info !120, !taffo.initweight !52
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.info !124, !taffo.initweight !60

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.info !144, !taffo.initweight !52
  %arrayidx42 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx41, i32 0, i32 %j.2, !taffo.info !144, !taffo.initweight !52
  store float -9.990000e+02, float* %arrayidx42, align 4, !taffo.info !135, !taffo.initweight !60, !taffo.constinfo !146
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.info !139, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !149

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.info !142, !taffo.initweight !52, !taffo.constinfo !21
  br label %for.cond18, !llvm.loop !150

for.end48:                                        ; preds = %for.cond18
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

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
!31 = !{i32 0}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 1.200000e+00, double 1.200000e+00}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 26}
!36 = !{!"C"}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 -32, i32 21}
!39 = !{double -9.990000e+02, double 1.800000e+00}
!40 = !{!29, !41, i1 false, i2 -1}
!41 = !{double 1.000000e-01, double 2.500000e+00}
!42 = !{!29, i1 false, i1 false, i2 -1}
!43 = !{i32 1}
!44 = !{!35, i1 false, i1 false, i2 -1}
!45 = !{!38, i1 false, i1 false, i2 -1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = distinct !{null}
!49 = !{i1 false}
!50 = !{!51, !30, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 29}
!52 = !{i32 2}
!53 = distinct !{null}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.100000e+01}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 1.000000e+00}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 1.870000e+02}
!60 = !{i32 3}
!61 = !{i1 false, !1, i1 false, i2 -1}
!62 = !{i32 4}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.870000e+02}
!65 = distinct !{!65, !23}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.100000e+01}
!68 = distinct !{!68, !23}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = !{i32 -1, i32 -1, i32 -1}
!71 = !{i32 1, !16, i32 1, !72, i32 1, !0}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.600000e+01, double 1.600000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 0.000000e+00}
!78 = !{i1 false, i1 false, i1 false}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!82 = !{i32 1, !16, i32 1, !72, i32 1, !50, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40}
!83 = !{!84, !85, i1 false, i2 1}
!84 = !{!"fixp", i32 -32, i32 19}
!85 = !{double -2.497500e+03, double 4.500000e+00}
!86 = !{i32 5}
!87 = !{i32 6}
!88 = !{!51, !41, i1 false, i2 -1}
!89 = !{i32 7}
!90 = !{!51, !91, i1 false, i2 -1}
!91 = !{double 0x3FC3333333333334, double 3.750000e+00}
!92 = !{!84, !39, i1 false, i2 -1}
!93 = !{!84, !94, i1 false, i2 -1}
!94 = !{double -3.746250e+03, double 6.750000e+00}
!95 = !{!84, !96, i1 false, i2 -1}
!96 = !{double -3.746250e+03, double 0x40494A3D816ACEAB}
!97 = !{!84, !85, i1 false, i2 -1}
!98 = !{i32 8}
!99 = !{i32 9}
!100 = distinct !{!100, !23}
!101 = !{!35, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 0x404A4C49CE802B33}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 18}
!105 = !{double -3.746250e+03, double 0x404DAC49CE802B33}
!106 = !{!104, !94, i1 false, i2 -1}
!107 = !{!104, !108, i1 false, i2 -1}
!108 = !{double -7.492500e+03, double 0x40508624E740159A}
!109 = distinct !{!109, !23}
!110 = distinct !{!110, !23}
!111 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!112 = !{i32 1, !16, i32 1, !72, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40}
!113 = !{!114, i1 false}
!114 = !{i1 false, !30, i1 false, i2 0}
!115 = !{i1 false, !33, i1 false, i2 -1}
!116 = !{!117, i1 false}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!119 = !{i1 false, !55, i1 false, i2 1}
!120 = !{i1 false, !57, i1 false, i2 1}
!121 = !{i1 false, !3, i1 false, i2 1}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 1.700000e+01}
!124 = !{i1 false, !125, i1 false, i2 1}
!125 = !{double 0.000000e+00, double 1.600000e+01}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 0.000000e+00, double 2.600000e+01}
!128 = !{!129, !127, i1 false, i2 1}
!129 = !{!"fixp", i32 32, i32 27}
!130 = !{!131, !17, i1 false, i2 1}
!131 = !{!"fixp", i32 32, i32 28}
!132 = !{!131, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 2.600000e+00}
!134 = !{!35, !1, i1 false, i2 1}
!135 = !{i1 false, i1 false, i1 false, i2 1}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 1.600000e+01, double 2.600000e+01}
!138 = !{!29, !41, i1 false, i2 1}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 1.000000e+00, double 1.700000e+01}
!141 = distinct !{!141, !23}
!142 = !{i1 false, !67, i1 false, i2 1}
!143 = distinct !{!143, !23}
!144 = !{!38, !39, i1 false, i2 1}
!145 = distinct !{!145, !23}
!146 = !{!147, i1 false}
!147 = !{i1 false, !148, i1 false, i2 0}
!148 = !{double -9.990000e+02, double -9.990000e+02}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
