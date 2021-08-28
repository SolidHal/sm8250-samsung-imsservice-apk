.class public Lcom/sec/internal/log/CmcPingTestLogger;
.super Ljava/lang/Object;
.source "CmcPingTestLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;,
        Lcom/sec/internal/log/CmcPingTestLogger$PingThread;
    }
.end annotation


# static fields
.field private static final GOOGLE_PUBLIC_NAMESERVER:Ljava/lang/String; = "8.8.8.8"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_PING_COUNT:I = 0x3

.field private static final PING_TIMEOUT_SECONDS:I = 0x5

.field private static final PingServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/log/CmcPingTestLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/log/CmcPingTestLogger;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/sec/internal/log/CmcPingTestLogger$1;

    invoke-direct {v0}, Lcom/sec/internal/log/CmcPingTestLogger$1;-><init>()V

    sput-object v0, Lcom/sec/internal/log/CmcPingTestLogger;->PingServer:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/log/CmcPingTestLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$ping$0(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 9
    .param p0, "pcscfList"    # Ljava/util/List;
    .param p1, "listener"    # Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;

    .line 53
    const/4 v0, 0x2

    .line 54
    .local v0, "numberOfDestination":I
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 55
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v2, [Ljava/lang/StringBuilder;

    .line 57
    .local v3, "outputBuffer":[Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v5, v3, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;

    const-string v5, "8.8.8.8"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-direct {v4, v5, v7, v1}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->start()V

    .line 63
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 64
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "pcscf":Ljava/lang/String;
    const-string v5, "[-\\.]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "slice":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 68
    sget-object v6, Lcom/sec/internal/log/CmcPingTestLogger;->PingServer:Ljava/util/Map;

    aget-object v7, v5, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "pingAddress":Ljava/lang/String;
    new-instance v7, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-direct {v7, v6, v8, v1}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->start()V

    .line 74
    .end local v4    # "pcscf":Ljava/lang/String;
    .end local v5    # "slice":[Ljava/lang/String;
    .end local v6    # "pingAddress":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 76
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 77
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/CmcPingTestLogger;->makePingLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "log":Ljava/lang/String;
    const v6, 0x70000009

    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 76
    .end local v5    # "log":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 81
    .end local v4    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 82
    invoke-interface {p1, v2}, Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;->OnFinish(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "numberOfDestination":I
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "outputBuffer":[Ljava/lang/StringBuilder;
    :cond_3
    goto :goto_2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/log/CmcPingTestLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static makePingLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "output"    # Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "scanner":Ljava/util/Scanner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "line":Ljava/lang/String;
    const-string v3, "PING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " "

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "splited":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v3    # "splited":[Ljava/lang/String;
    goto :goto_2

    .line 105
    :cond_0
    const-string/jumbo v3, "packets transmitted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x3

    const-string v6, "/"

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3    # "splited":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .end local v3    # "splited":[Ljava/lang/String;
    goto :goto_2

    .line 110
    :cond_1
    const-string/jumbo v3, "rtt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .restart local v3    # "splited":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 113
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    aget-object v7, v3, v4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "splited":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static ping(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    .line 48
    return-void
.end method

.method public static ping(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;-><init>(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method
