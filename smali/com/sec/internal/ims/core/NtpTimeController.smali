.class public Lcom/sec/internal/ims/core/NtpTimeController;
.super Landroid/os/Handler;
.source "NtpTimeController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/INtpTimeController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isForceRefreshed:Z

.field private mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mNtpTimeChangedListnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNtpTimeOffset:J

.field private mNtpTrustedTime:Landroid/util/NtpTrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/core/NtpTimeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 36
    return-void
.end method

.method private static isAutomaticTimeRequested(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 145
    .local v0, "value":Z
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutomaticTimeRequested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v0
.end method

.method private declared-synchronized requestNtpTime(Z)V
    .locals 6
    .param p1, "forceRefresh"    # Z

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/core/NtpTimeController;->isAutomaticTimeRequested(Landroid/content/Context;)Z

    move-result v0

    .line 97
    .local v0, "isAutomaticTimeRequested":Z
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNtpTime : forceRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isForceRefreshed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAutomaticTimeRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/core/NtpTimeController;
    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    if-eqz v1, :cond_1

    .line 103
    iget-wide v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/NtpTimeController;->sendNtpTimeOffsetChanged(J)V

    goto :goto_1

    .line 105
    :cond_1
    if-nez p1, :cond_3

    .line 106
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 109
    .local v2, "coldNtpTimeOffset":J
    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    .line 110
    .end local v2    # "coldNtpTimeOffset":J
    goto :goto_1

    .line 111
    :cond_2
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    goto :goto_1

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/ims/core/-$$Lambda$NtpTimeController$yItxDfj_9s-MpQbD6jIbNfkw1BM;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/-$$Lambda$NtpTimeController$yItxDfj_9s-MpQbD6jIbNfkw1BM;-><init>(Lcom/sec/internal/ims/core/NtpTimeController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "isAutomaticTimeRequested":Z
    .end local p1    # "forceRefresh":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendNtpTimeOffsetChanged(J)V
    .locals 5
    .param p1, "ntpTimeOffset"    # J

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    .line 83
    .local v1, "listener":Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;->onNtpTimeOffsetChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendNtpTimeOffsetChanged failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v1    # "listener":Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private updateNtpTimeOffset(JI)V
    .locals 3
    .param p1, "ntpTimeOffset"    # J
    .param p3, "duration"    # I

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNtpTimeOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-wide p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateNtpTimeOffset(J)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/NtpTimeController;->sendNtpTimeOffsetChanged(J)V

    .line 78
    return-void
.end method


# virtual methods
.method public initSequentially()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/NtpTimeController;->requestNtpTime(Z)V

    .line 93
    return-void
.end method

.method public synthetic lambda$requestNtpTime$0$NtpTimeController()V
    .locals 7

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "start":J
    iget-object v2, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 120
    .local v2, "duration":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 121
    .local v3, "hotNtpTimeOffset":J
    invoke-direct {p0, v3, v4, v2}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    .line 122
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    .line 123
    .end local v2    # "duration":I
    .end local v3    # "hotNtpTimeOffset":J
    goto :goto_0

    .line 124
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "forceRefresh failed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "start":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public refreshNtpTime()V
    .locals 1

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/NtpTimeController;->requestNtpTime(Z)V

    .line 69
    return-void
.end method

.method public registerNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    .local v0, "alreadyRegistered":Z
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNtpTimeChangedListener: alreadyRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    invoke-interface {p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;->onNtpTimeOffsetChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 52
    :goto_1
    return-void
.end method

.method public unregisterNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNtpTimeChangedListener:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 64
    :goto_1
    return-void
.end method
