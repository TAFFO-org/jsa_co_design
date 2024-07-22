; ModuleID = './build/bin/fixed/jacobi-2d/24/jacobi-2d-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %A = alloca [15 x [15 x float]], align 4, !taffo.info !28, !taffo.initweight !31, !taffo.target !32
  %B = alloca [15 x [15 x float]], align 4, !taffo.info !33, !taffo.initweight !31
  %A1 = bitcast [15 x [15 x float]]* %A to i8*, !taffo.info !35, !taffo.initweight !36, !taffo.target !32
  %B2 = bitcast [15 x [15 x float]]* %B to i8*, !taffo.info !35, !taffo.initweight !36
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.info !33, !taffo.initweight !36
  call void @init_array.2(i32 noundef 15, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3), !taffo.info !37, !taffo.initweight !38, !taffo.constinfo !39, !taffo.target !32, !taffo.originalCall !40
  call void @timer_start(), !taffo.constinfo !41
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.info !33, !taffo.initweight !36
  call void @kernel_jacobi_2d.1(i32 noundef 10, i32 noundef 15, [15 x float]* noundef %arraydecay4, [15 x float]* noundef %arraydecay5), !taffo.info !37, !taffo.initweight !38, !taffo.constinfo !42, !taffo.target !32, !taffo.originalCall !43
  call void @timer_stop(), !taffo.constinfo !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !48
  %cmp7 = icmp slt i32 %j.0, 15, !taffo.info !46
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 %i.0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !38, !taffo.target !32
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !28, !taffo.initweight !50, !taffo.target !32
  %arrayidx10 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !0
  store float %0, float* %arrayidx11, align 4, !taffo.info !37, !taffo.initweight !51, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !52, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !54

for.end:                                          ; preds = %for.cond6
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !57

for.end14:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 15, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !46
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !46
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !58
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !39
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !66

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !67

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.sourceFunction !43 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ], !taffo.info !46
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ], !taffo.info !70
  %sub = sub nsw i32 %n, 1, !taffo.info !72, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !62
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ], !taffo.info !70
  %sub5 = sub nsw i32 %n, 1, !taffo.info !72, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !62
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !28, !taffo.initweight !76
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %sub10 = sub nsw i32 %j.0, 1, !taffo.info !64, !taffo.constinfo !21
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10, !taffo.info !28, !taffo.initweight !75
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !28, !taffo.initweight !76
  %add = fadd float %0, %1, !taffo.info !77, !taffo.initweight !80
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !74
  %add13 = add nsw i32 1, %j.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13, !taffo.info !28, !taffo.initweight !75
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !81, !taffo.initweight !76
  %add15 = fadd float %add, %2, !taffo.info !82, !taffo.initweight !80
  %add16 = add nsw i32 1, %i.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %add16, !taffo.info !28, !taffo.initweight !74
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !81, !taffo.initweight !76
  %add19 = fadd float %add15, %3, !taffo.info !84, !taffo.initweight !80
  %sub20 = sub nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %sub20, !taffo.info !28, !taffo.initweight !74
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !75
  %4 = load float, float* %arrayidx22, align 4, !taffo.info !87, !taffo.initweight !76
  %add23 = fadd float %add19, %4, !taffo.info !88, !taffo.initweight !80
  %mul = fmul float 0x3FC99999A0000000, %add23, !taffo.info !90, !taffo.initweight !92, !taffo.constinfo !93
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.info !33, !taffo.initweight !74
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.info !33, !taffo.initweight !75
  store float %mul, float* %arrayidx25, align 4, !taffo.info !96, !taffo.initweight !76
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !97

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !98

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ], !taffo.info !70
  %sub30 = sub nsw i32 %n, 1, !taffo.info !72, !taffo.constinfo !21
  %cmp31 = icmp slt i32 %i.1, %sub30, !taffo.info !62
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ], !taffo.info !70
  %sub34 = sub nsw i32 %n, 1, !taffo.info !72, !taffo.constinfo !21
  %cmp35 = icmp slt i32 %j.1, %sub34, !taffo.info !62
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !33, !taffo.initweight !74
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.info !33, !taffo.initweight !75
  %5 = load float, float* %arrayidx38, align 4, !taffo.info !99, !taffo.initweight !76
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !33, !taffo.initweight !74
  %sub40 = sub nsw i32 %j.1, 1, !taffo.info !64, !taffo.constinfo !21
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40, !taffo.info !33, !taffo.initweight !75
  %6 = load float, float* %arrayidx41, align 4, !taffo.info !99, !taffo.initweight !76
  %add42 = fadd float %5, %6, !taffo.info !100, !taffo.initweight !80
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !33, !taffo.initweight !74
  %add44 = add nsw i32 1, %j.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44, !taffo.info !33, !taffo.initweight !75
  %7 = load float, float* %arrayidx45, align 4, !taffo.info !99, !taffo.initweight !76
  %add46 = fadd float %add42, %7, !taffo.info !102, !taffo.initweight !80
  %add47 = add nsw i32 1, %i.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %add47, !taffo.info !33, !taffo.initweight !74
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %j.1, !taffo.info !33, !taffo.initweight !75
  %8 = load float, float* %arrayidx49, align 4, !taffo.info !104, !taffo.initweight !76
  %add50 = fadd float %add46, %8, !taffo.info !105, !taffo.initweight !80
  %sub51 = sub nsw i32 %i.1, 1, !taffo.info !64, !taffo.constinfo !21
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %sub51, !taffo.info !33, !taffo.initweight !74
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %j.1, !taffo.info !33, !taffo.initweight !75
  %9 = load float, float* %arrayidx53, align 4, !taffo.info !104, !taffo.initweight !76
  %add54 = fadd float %add50, %9, !taffo.info !107, !taffo.initweight !80
  %mul55 = fmul float 0x3FC99999A0000000, %add54, !taffo.info !109, !taffo.initweight !92, !taffo.constinfo !93
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.1, !taffo.info !28, !taffo.initweight !74
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %j.1, !taffo.info !28, !taffo.initweight !75
  store float %mul55, float* %arrayidx57, align 4, !taffo.info !37, !taffo.initweight !76
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !111

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond29, !llvm.loop !112

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !113

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !114 !taffo.funinfo !115 !taffo.sourceFunction !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.info !116, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !118, !taffo.initweight !38
  br i1 %cmp, label %for.body, label %for.end21, !taffo.info !116, !taffo.initweight !50

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !116, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !118, !taffo.initweight !38
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !116, !taffo.initweight !50

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.info !119, !taffo.initweight !38
  %add = add nsw i32 %j.0, 2, !taffo.info !121, !taffo.initweight !38, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !123, !taffo.initweight !50
  %mul = fmul float %conv, %conv6, !taffo.info !125, !taffo.initweight !50
  %add7 = fadd float %mul, 2.000000e+00, !taffo.info !128, !taffo.initweight !51, !taffo.constinfo !130
  %conv8 = sitofp i32 %n to float, !taffo.info !131
  %div = fdiv float %add7, %conv8, !taffo.info !133, !taffo.initweight !74
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !135, !taffo.initweight !38
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !135, !taffo.initweight !38
  store float %div, float* %arrayidx9, align 4, !taffo.info !136, !taffo.initweight !50
  %conv10 = sitofp i32 %i.0 to float, !taffo.info !119, !taffo.initweight !38
  %add11 = add nsw i32 %j.0, 3, !taffo.info !137, !taffo.initweight !38, !taffo.constinfo !21
  %conv12 = sitofp i32 %add11 to float, !taffo.info !139, !taffo.initweight !50
  %mul13 = fmul float %conv10, %conv12, !taffo.info !140, !taffo.initweight !50
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.info !142, !taffo.initweight !51, !taffo.constinfo !144
  %conv15 = sitofp i32 %n to float, !taffo.info !131
  %div16 = fdiv float %add14, %conv15, !taffo.info !147, !taffo.initweight !74
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.info !149, !taffo.initweight !38
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.info !149, !taffo.initweight !38
  store float %div16, float* %arrayidx18, align 4, !taffo.info !136, !taffo.initweight !50
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !150, !taffo.initweight !38, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !152

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.info !150, !taffo.initweight !38, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !153

for.end21:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x402E22222D5171E3}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{double 1.333330e-01, double 0x402E22222D5171E3}
!31 = !{i32 0}
!32 = !{!"A"}
!33 = !{!29, !34, i1 false, i2 -1}
!34 = !{double 2.000000e-01, double 0x40301111276FB092}
!35 = !{!29, i1 false, i1 false, i2 -1}
!36 = !{i32 1}
!37 = !{i1 false, !30, i1 false, i2 -1}
!38 = !{i32 2}
!39 = !{i1 false, i1 false, i1 false, i1 false}
!40 = distinct !{null}
!41 = !{i1 false}
!42 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!43 = distinct !{null}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 1.600000e+01}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 1.000000e+00}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 2.560000e+02}
!50 = !{i32 3}
!51 = !{i32 4}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 2.560000e+02}
!54 = distinct !{!54, !23}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.600000e+01}
!57 = distinct !{!57, !23}
!58 = !{i1 false, i1 false, i1 false}
!59 = !{i32 1, !60, i32 1, !0}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.500000e+01, double 1.500000e+01}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 0.000000e+00}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = !{i32 -1, i32 -1, i32 2, i32 2}
!69 = !{i32 1, !16, i32 1, !60, i32 1, !28, i32 1, !33}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 2.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.400000e+01, double 1.400000e+01}
!74 = !{i32 5}
!75 = !{i32 6}
!76 = !{i32 7}
!77 = !{!78, !79, i1 false, i2 -1}
!78 = !{!"fixp", i32 32, i32 26}
!79 = !{double 2.666660e-01, double 0x403E22222D5171E3}
!80 = !{i32 8}
!81 = !{!78, !30, i1 false, i2 -1}
!82 = !{!78, !83, i1 false, i2 -1}
!83 = !{double 3.999990e-01, double 0x40469999A1FD156A}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 32, i32 25}
!86 = !{double 5.333320e-01, double 0x404E22222D5171E3}
!87 = !{!85, !30, i1 false, i2 -1}
!88 = !{!85, !89, i1 false, i2 -1}
!89 = !{double 0x3FE55551D68C6930, double 0x4052D5555C52E72E}
!90 = !{!85, !91, i1 false, i2 -1}
!91 = !{double 0x3FC1110E49816485, double 0x402E222234D9FA6F}
!92 = !{i32 9}
!93 = !{!94, i1 false}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!96 = !{i1 false, !34, i1 false, i2 -1}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{!78, !34, i1 false, i2 -1}
!100 = !{!78, !101, i1 false, i2 -1}
!101 = !{double 4.000000e-01, double 0x40401111276FB092}
!102 = !{!85, !103, i1 false, i2 -1}
!103 = !{double 0x3FE3333333333334, double 0x40481999BB2788DB}
!104 = !{!85, !34, i1 false, i2 -1}
!105 = !{!85, !106, i1 false, i2 -1}
!106 = !{double 8.000000e-01, double 0x40501111276FB092}
!107 = !{!85, !108, i1 false, i2 -1}
!108 = !{double 1.000000e+00, double 0x40541555714B9CB6}
!109 = !{!85, !110, i1 false, i2 -1}
!110 = !{double 0x3FC99999A0000000, double 0x403011112B73F4DB}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = !{i32 -1, i32 2, i32 2}
!115 = !{i32 1, !60, i32 1, !28, i32 1, !33}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -1.500000e+01, double 1.500000e+01}
!118 = !{i1 false, !47, i1 false, i2 -1}
!119 = !{!120, !117, i1 false, i2 -1}
!120 = !{!"fixp", i32 -32, i32 27}
!121 = !{i1 false, !122, i1 false, i2 -1}
!122 = !{double -1.300000e+01, double 1.700000e+01}
!123 = !{!124, !122, i1 false, i2 -1}
!124 = !{!"fixp", i32 -32, i32 26}
!125 = !{!126, !127, i1 false, i2 -1}
!126 = !{!"fixp", i32 -32, i32 22}
!127 = !{double -2.550000e+02, double 2.550000e+02}
!128 = !{!126, !129, i1 false, i2 -1}
!129 = !{double -2.530000e+02, double 2.570000e+02}
!130 = !{i1 false, !19}
!131 = !{!132, !61, i1 false, i2 1}
!132 = !{!"fixp", i32 32, i32 28}
!133 = !{!124, !134, i1 false, i2 -1}
!134 = !{double 0xC030DDDDDDDDDDDE, double 0x4031222222222222}
!135 = !{!29, !30, i1 false, i2 1}
!136 = !{i1 false, i1 false, i1 false, i2 1}
!137 = !{i1 false, !138, i1 false, i2 -1}
!138 = !{double -1.200000e+01, double 1.800000e+01}
!139 = !{!124, !138, i1 false, i2 -1}
!140 = !{!126, !141, i1 false, i2 -1}
!141 = !{double -2.700000e+02, double 2.700000e+02}
!142 = !{!126, !143, i1 false, i2 -1}
!143 = !{double -2.670000e+02, double 2.730000e+02}
!144 = !{i1 false, !145}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 3.000000e+00, double 3.000000e+00}
!147 = !{!124, !148, i1 false, i2 -1}
!148 = !{double -1.780000e+01, double 1.820000e+01}
!149 = !{!29, !34, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double -1.400000e+01, double 1.600000e+01}
!152 = distinct !{!152, !23}
!153 = distinct !{!153, !23}
