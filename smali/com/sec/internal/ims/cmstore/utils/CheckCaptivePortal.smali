.class public Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;
.super Ljava/lang/Object;
.source "CheckCaptivePortal.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final WALLED_GARDEN_RETRY_COUNT:I = 0x3

.field private static final WALLED_GARDEN_RETRY_INTERVAL:I = 0xbb8

.field private static final WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z
    .locals 5
    .param p0, "wifi"    # Landroid/net/Network;

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://clients3.google.com/generate_204"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v0, v3

    .line 33
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 34
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 44
    :cond_0
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    const/4 v0, 0x0

    .line 39
    :cond_1
    return v1

    .line 44
    .end local v2    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    nop

    .line 44
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    const/4 v0, 0x0

    .line 42
    :cond_2
    return v1

    .line 44
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    const/4 v0, 0x0

    .line 48
    :cond_3
    throw v1
.end method

.method public static isGoodWifi(Landroid/net/Network;)Z
    .locals 3
    .param p0, "wifi"    # Landroid/net/Network;

    .line 17
    const/4 v0, 0x1

    .line 18
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 19
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->checkWifiWorksFineWithWalledGardenUrl(Landroid/net/Network;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    const/16 v2, 0xbb8

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->sleepHelper(I)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private static sleepHelper(I)V
    .locals 3
    .param p0, "sleepTime"    # I

    .line 53
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    const-string/jumbo v2, "sleepHelper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
