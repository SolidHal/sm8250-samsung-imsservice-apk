.class public Lcom/sec/internal/log/CriticalLogger;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/CriticalLogger$LoggingHandler;,
        Lcom/sec/internal/log/CriticalLogger$HOLDER;
    }
.end annotation


# static fields
.field private static final FLUSH_TIMEOUT:J = 0x1f4L

.field private static final IMS_CR_LOG_PATH:Ljava/lang/String; = "/data/log/imscr/imscr.log"

.field static final LIMIT_LOG_RECORD:I = 0x1e

.field private static final LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field static final MAX_LOG_SIZE:I = 0x100000

.field private static final NAME:Ljava/lang/String; = "IMSCR"

.field static final NUM_OF_LOGS:I = 0x5

.field private static final SAVE_PERIOD:J = 0x927c0L

.field private static mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLogFileManager:Lcom/sec/internal/log/LogFileManager;

.field private mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

.field private mLoggingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/sec/internal/log/CriticalLogger;->init()V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/log/CriticalLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/log/CriticalLogger$1;

    .line 20
    invoke-direct {p0}, Lcom/sec/internal/log/CriticalLogger;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/log/CriticalLogger;
    .locals 1

    .line 44
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger$HOLDER;->access$000()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flush "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#IMSCR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->removeMessages(I)V

    .line 95
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 96
    .local v0, "flushLock":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    const-wide/16 v1, 0x1f4

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 101
    :goto_0
    return-void
.end method

.method getLogRecordCount()I
    .locals 1

    .line 59
    sget-object v0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getLooper()Landroid/os/Looper;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v0}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 4

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IMSCR"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    iget-object v1, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;-><init>(Lcom/sec/internal/log/CriticalLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    .line 53
    new-instance v0, Lcom/sec/internal/log/LogFileManager;

    const-string v1, "/data/log/imscr/imscr.log"

    const/high16 v2, 0x100000

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogFileManager;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLogFileManager:Lcom/sec/internal/log/LogFileManager;

    .line 54
    invoke-virtual {v0}, Lcom/sec/internal/log/LogFileManager;->init()V

    .line 55
    return-void
.end method

.method public write(ILjava/lang/String;)V
    .locals 6
    .param p1, "logClass"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/sec/internal/log/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/log/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s 0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "log":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 73
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "logStr":Ljava/lang/String;
    const-string v3, "#IMSCR"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    iget-object v3, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v3, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    :cond_2
    return-void
.end method
