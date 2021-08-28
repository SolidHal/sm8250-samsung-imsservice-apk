.class public Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;
.super Ljava/lang/Object;
.source "CmcPerformanceMeasure.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final CMC_DOMAIN:Ljava/lang/String; = "samsungims.com"

.field static DATA_DIR_PATH:Ljava/nio/file/Path; = null

.field protected static final DATE_FORMAT_LOG_POSTFIX:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMAT_OUTPUT_DEFAULT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMAT_OUTPUT_UTC:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMAT_SENDTIME_UTC:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMAT_STACKIF:Ljava/text/SimpleDateFormat;

.field static final LOG_DIR_PATH:Ljava/lang/String; = "log/cmc"

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "cmcCallPerformanceResult_%s.csv"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final MAX_LOG_FILE_SIZE:I = 0x100000

.field private static final SIP_HEADER_CALL_ID:Ljava/lang/String; = "Call-ID"

.field private static final SIP_HEADER_CMC_SENDTIME:Ljava/lang/String; = "Cmc-SendTime"

.field private static final SIP_HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final SIP_HEADER_CSEQ:Ljava/lang/String; = "CSeq"

.field private static final SIP_HEADER_SESSION_ID:Ljava/lang/String; = "Session-ID"

.field private static final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static smIsCmcRegistered:Z

.field private static smIsInitialized:Z

.field private static smNtpTimeChangedListener:Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

.field private static smNtpTimeChangedListenerRegistered:Z

.field private static smNtpTimeOffset:J


# instance fields
.field private mLogPath:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-class v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_STACKIF:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM/dd/yyyy HH:mm:ss.SSS Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_DEFAULT:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_UTC:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "dd/MM/yyyy HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_SENDTIME_UTC:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMdd_HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_LOG_POSTFIX:Ljava/text/SimpleDateFormat;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_DEFAULT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 44
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_UTC:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_SENDTIME_UTC:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATA_DIR_PATH:Ljava/nio/file/Path;

    .line 62
    sput-boolean v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsInitialized:Z

    .line 63
    sput-boolean v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsCmcRegistered:Z

    .line 64
    sput-boolean v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListenerRegistered:Z

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeOffset:J

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;->INSTANCE:Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListener:Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CmcPerformanceMeasure created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsInitialized:Z

    .line 75
    return-void
.end method

.method private analyze(IILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .param p3, "cmcRecvTime"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 151
    move-object/from16 v12, p0

    move-object/from16 v13, p4

    const-string v0, ""

    :try_start_0
    sget-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsInitialized:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListenerRegistered:Z

    if-eqz v1, :cond_8

    invoke-direct {v12, v13}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->isCmcMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    move-object v1, v0

    .line 153
    .local v1, "method":Ljava/lang/String;
    const-string v2, "N/A"

    .line 154
    .local v2, "sessionId":Ljava/lang/String;
    move-object v3, v0

    .line 155
    .local v3, "cmcSendTime":Ljava/lang/String;
    move-object v4, v0

    .line 156
    .local v4, "cseq":Ljava/lang/String;
    nop

    .line 157
    .local v0, "callId":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 159
    .local v5, "gap":J
    const-string v7, "\n"

    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 161
    .local v14, "lines":[Ljava/lang/String;
    array-length v7, v14

    const/4 v8, 0x0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object v10, v3

    move-object/from16 v17, v4

    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "sessionId":Ljava/lang/String;
    .end local v3    # "cmcSendTime":Ljava/lang/String;
    .end local v4    # "cseq":Ljava/lang/String;
    .local v10, "cmcSendTime":Ljava/lang/String;
    .local v15, "method":Ljava/lang/String;
    .local v16, "sessionId":Ljava/lang/String;
    .local v17, "cseq":Ljava/lang/String;
    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v1, v14, v8

    .line 162
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 163
    invoke-direct {v12, v1}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->extractMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .end local v15    # "method":Ljava/lang/String;
    .local v2, "method":Ljava/lang/String;
    goto/16 :goto_1

    .line 164
    .end local v2    # "method":Ljava/lang/String;
    .restart local v15    # "method":Ljava/lang/String;
    :cond_0
    const-string v2, "CSeq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ":"

    if-eqz v2, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    .end local v17    # "cseq":Ljava/lang/String;
    .local v2, "cseq":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v2    # "cseq":Ljava/lang/String;
    .restart local v17    # "cseq":Ljava/lang/String;
    :cond_1
    const-string v2, "Call-ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 168
    :cond_2
    const-string v2, "Session-ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .end local v16    # "sessionId":Ljava/lang/String;
    .local v2, "sessionId":Ljava/lang/String;
    goto :goto_1

    .line 170
    .end local v2    # "sessionId":Ljava/lang/String;
    .restart local v16    # "sessionId":Ljava/lang/String;
    :cond_3
    const-string v2, "Cmc-SendTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .end local v10    # "cmcSendTime":Ljava/lang/String;
    .local v2, "cmcSendTime":Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v2    # "cmcSendTime":Ljava/lang/String;
    .restart local v10    # "cmcSendTime":Ljava/lang/String;
    :cond_4
    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    goto :goto_2

    .line 161
    .end local v1    # "line":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 176
    :cond_6
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_STACKIF:Ljava/text/SimpleDateFormat;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 177
    .local v9, "cmcRecvDate":Ljava/util/Date;
    sget-wide v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeOffset:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    add-long v18, v1, v3

    .line 180
    .local v18, "correctionTime":J
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    return-void

    .line 183
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_SENDTIME_UTC:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 185
    .local v8, "cmcSendDate":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v20, v18, v1

    .line 188
    .end local v5    # "gap":J
    .local v20, "gap":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v16

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v17

    move/from16 v7, p2

    move-object/from16 v22, v10

    .end local v10    # "cmcSendTime":Ljava/lang/String;
    .local v22, "cmcSendTime":Ljava/lang/String;
    move-wide/from16 v10, v20

    invoke-direct/range {v1 .. v11}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->writeFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .end local v0    # "callId":Ljava/lang/String;
    .end local v8    # "cmcSendDate":Ljava/util/Date;
    .end local v9    # "cmcRecvDate":Ljava/util/Date;
    .end local v14    # "lines":[Ljava/lang/String;
    .end local v15    # "method":Ljava/lang/String;
    .end local v16    # "sessionId":Ljava/lang/String;
    .end local v17    # "cseq":Ljava/lang/String;
    .end local v18    # "correctionTime":J
    .end local v20    # "gap":J
    .end local v22    # "cmcSendTime":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private extractMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 196
    const-string v0, ""

    .line 197
    .local v0, "method":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 198
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "splitedLine":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v5, "SIP/2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_0
    aget-object v0, v2, v3

    .line 207
    .end local v2    # "splitedLine":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private handleRegiEvent(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "regState"    # Z
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "cmcType"    # I

    .line 140
    if-lez p3, :cond_1

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->onCmcRegistered()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->onCmcDeregistered()V

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method private isCmcMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 211
    if-eqz p1, :cond_0

    const-string/jumbo v0, "samsungims.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(J)V
    .locals 0
    .param p0, "ntpTmeOffset"    # J

    .line 67
    sput-wide p0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeOffset:J

    return-void
.end method

.method public static declared-synchronized onCmcDeregistered()V
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCmcDeregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsCmcRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v0

    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onCmcRegistered()V
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCmcRegistered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsCmcRegistered:Z

    .line 81
    sget-boolean v2, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListenerRegistered:Z

    if-nez v2, :cond_0

    .line 82
    sput-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListenerRegistered:Z

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smNtpTimeChangedListener:Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/INtpTimeController;->registerNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/INtpTimeController;->refreshNtpTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;J)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "cseq"    # Ljava/lang/String;
    .param p6, "direction"    # I
    .param p7, "cmcSendDate"    # Ljava/util/Date;
    .param p8, "cmcRecvDate"    # Ljava/util/Date;
    .param p9, "gap"    # J

    .line 216
    move-object v1, p0

    move-object/from16 v2, p7

    const-string v0, ","

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v4, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    new-array v6, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    invoke-static {v4}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->initLogFile()Ljava/nio/file/Path;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 222
    :cond_1
    move v4, p1

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 223
    move-object v6, p2

    :try_start_2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 224
    move-object/from16 v7, p3

    :try_start_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 225
    move-object/from16 v8, p4

    :try_start_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    move-object/from16 v9, p5

    :try_start_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    if-nez p6, :cond_2

    const-string v10, "[-->]"

    goto :goto_0

    :cond_2
    const-string v10, "[<--]"

    :goto_0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    sget-object v10, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_DEFAULT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 229
    const-string v10, ""

    if-nez p6, :cond_3

    move-object/from16 v12, p8

    move-object v11, v10

    goto :goto_1

    :cond_3
    :try_start_6
    sget-object v11, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_DEFAULT:Ljava/text/SimpleDateFormat;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v12, p8

    :try_start_7
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    if-nez p6, :cond_4

    goto :goto_2

    :cond_4
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_OUTPUT_UTC:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    iget-object v0, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    new-array v10, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v0, :cond_7

    .line 234
    :try_start_8
    iget-object v0, v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mLogPath:Ljava/nio/file/Path;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/nio/file/OpenOption;

    sget-object v11, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v11, v10, v5

    invoke-static {v0, v10}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v0

    .line 235
    .local v5, "writer":Ljava/io/BufferedWriter;
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 238
    .end local v0    # "log":Ljava/lang/String;
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 240
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_5
    goto :goto_4

    .line 234
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v0

    move-object v10, v0

    if-eqz v5, :cond_6

    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_c
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "this":Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;
    .end local p1    # "phoneId":I
    .end local p2    # "sessionId":Ljava/lang/String;
    .end local p3    # "callId":Ljava/lang/String;
    .end local p4    # "method":Ljava/lang/String;
    .end local p5    # "cseq":Ljava/lang/String;
    .end local p6    # "direction":I
    .end local p7    # "cmcSendDate":Ljava/util/Date;
    .end local p8    # "cmcRecvDate":Ljava/util/Date;
    .end local p9    # "gap":J
    :cond_6
    :goto_3
    throw v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 238
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;
    .restart local p1    # "phoneId":I
    .restart local p2    # "sessionId":Ljava/lang/String;
    .restart local p3    # "callId":Ljava/lang/String;
    .restart local p4    # "method":Ljava/lang/String;
    .restart local p5    # "cseq":Ljava/lang/String;
    .restart local p6    # "direction":I
    .restart local p7    # "cmcSendDate":Ljava/util/Date;
    .restart local p8    # "cmcRecvDate":Ljava/util/Date;
    .restart local p9    # "gap":J
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d
    sget-object v5, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    :goto_4
    goto :goto_b

    .line 242
    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move v4, p1

    :goto_5
    move-object v6, p2

    :goto_6
    move-object/from16 v7, p3

    :goto_7
    move-object/from16 v8, p4

    :goto_8
    move-object/from16 v9, p5

    :goto_9
    move-object/from16 v12, p8

    .line 243
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_a
    sget-object v3, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b
    return-void
.end method


# virtual methods
.method initLogFile()Ljava/nio/file/Path;
    .locals 6

    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, "logFilePath":Ljava/nio/file/Path;
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATA_DIR_PATH:Ljava/nio/file/Path;

    const-string v2, "log/cmc"

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 253
    .local v1, "logDirPath":Ljava/nio/file/Path;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->makeLogFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    move-object v0, v3

    .line 258
    sget-object v3, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to create CmcPerformanceMeasure log file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 260
    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v3, "PhoneId,Session-ID,Call-ID,Method,CSeq,Direction,Cmc-SendTime,Time received,Gap,Cmc-SendTime(UTC)\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 265
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    goto :goto_1

    .line 261
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "logFilePath":Ljava/nio/file/Path;
    .end local v1    # "logDirPath":Ljava/nio/file/Path;
    .end local p0    # "this":Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;
    :cond_2
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 263
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "logFilePath":Ljava/nio/file/Path;
    .restart local v1    # "logDirPath":Ljava/nio/file/Path;
    .restart local p0    # "this":Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v3, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 269
    .end local v1    # "logDirPath":Ljava/nio/file/Path;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    goto :goto_2

    .line 267
    :catch_1
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Cannot create CmcPerformanceMeasure log file"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public synthetic lambda$send$1$CmcPerformanceMeasure(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "optionJob"    # Ljava/lang/Runnable;

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 105
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "notifyType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "notifyType":I
    if-nez v1, :cond_0

    .line 107
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "direction":I
    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "phoneId":I
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "cmcRecvTime":Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->analyze(IILjava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p2, :cond_0

    .line 115
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 118
    .end local v2    # "direction":I
    .end local v3    # "phoneId":I
    .end local v4    # "cmcRecvTime":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected makeLogFileName()Ljava/lang/String;
    .locals 3

    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->DATE_FORMAT_LOG_POSTFIX:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cmcCallPerformanceResult_%s.csv"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->send(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method send(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "optionJob"    # Ljava/lang/Runnable;

    .line 101
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 102
    sget-boolean v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->smIsCmcRegistered:Z

    if-eqz v1, :cond_1

    .line 103
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;-><init>(Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v1, p1, Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "DebugInfoType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .local v2, "debugInfoType":I
    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    .line 124
    const-string/jumbo v3, "regState"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 125
    .local v3, "regState":Z
    const-string/jumbo v4, "profileName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "profileName":Ljava/lang/String;
    const-string v5, "cmcType"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 129
    .local v5, "cmcType":I
    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->handleRegiEvent(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "debugInfoType":I
    .end local v3    # "regState":Z
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "cmcType":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
