.class Lcom/sec/internal/log/CmcPingTestLogger$PingThread;
.super Ljava/lang/Thread;
.source "CmcPingTestLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/CmcPingTestLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingThread"
.end annotation


# instance fields
.field countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field inetAddr:Ljava/lang/String;

.field outputBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->inetAddr:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->outputBuffer:Ljava/lang/StringBuilder;

    .line 132
    iput-object p3, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 137
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->inetAddr:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string/jumbo v0, "ping -c %d -W %d %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 141
    .local v1, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .local v2, "pingProcess":Ljava/lang/Process;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 145
    .local v4, "exitValue":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->outputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    .end local v4    # "exitValue":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 152
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 142
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "runtime":Ljava/lang/Runtime;
    .end local v2    # "pingProcess":Ljava/lang/Process;
    .end local p0    # "this":Lcom/sec/internal/log/CmcPingTestLogger$PingThread;
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 150
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v1    # "runtime":Ljava/lang/Runtime;
    .restart local v2    # "pingProcess":Ljava/lang/Process;
    .restart local p0    # "this":Lcom/sec/internal/log/CmcPingTestLogger$PingThread;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lcom/sec/internal/log/CmcPingTestLogger;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 155
    .end local v2    # "pingProcess":Ljava/lang/Process;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/log/CmcPingTestLogger;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 158
    return-void
.end method
