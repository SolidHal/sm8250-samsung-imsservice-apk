.class public Lcom/sec/internal/ims/aec/util/URLExtractor;
.super Ljava/lang/Object;
.source "URLExtractor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/aec/util/URLExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/util/URLExtractor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllByName(ILjava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "httpUrl"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "ipAddressArr":[Ljava/net/InetAddress;
    if-nez p2, :cond_0

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 88
    :goto_0
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/sec/internal/ims/aec/util/URLExtractor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-object v0
.end method

.method private static getDefaultHttpUrl(I)Ljava/lang/String;
    .locals 8
    .param p0, "phoneId"    # I

    .line 31
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 32
    .local v0, "simMgr":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    sget-object v2, Lcom/sec/internal/ims/aec/util/URLExtractor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getDefaultHttpUrl: sim manager not ready"

    invoke-static {v2, v3, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-object v1

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "operator":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne v3, v4, :cond_1

    .line 38
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "mcc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "mnc":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 41
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    .restart local v1    # "mcc":Ljava/lang/String;
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 48
    .restart local v3    # "mnc":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v5, "https://aes.mnc%s.mcc%s.pub.3gppnetwork.org"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 44
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/aec/util/URLExtractor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDefaultHttpUrl: invalid operator"

    invoke-static {v3, v4, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-object v1
.end method

.method private static getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "httpUrl"    # Ljava/lang/String;

    .line 96
    const-string v0, "https?://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "domainName":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method private static getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ipAddress"    # Ljava/net/InetAddress;

    .line 104
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "httpUrl"    # Ljava/lang/String;

    const-class v0, Lcom/sec/internal/ims/aec/util/URLExtractor;

    monitor-enter v0

    .line 55
    :try_start_0
    const-string v1, "https?://"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "hostName":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 59
    :cond_0
    monitor-exit v0

    return-object v1

    .line 54
    .end local v1    # "hostName":Ljava/lang/String;
    .end local p0    # "httpUrl":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHttpUrl(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/internal/ims/aec/util/URLExtractor;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ExternalStorage;->getLabHttpUrl()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "httpUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getDefaultHttpUrl(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 25
    :cond_0
    monitor-exit v0

    return-object v1

    .line 20
    .end local v1    # "httpUrl":Ljava/lang/String;
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getIpAddress(ILjava/lang/String;Landroid/net/Network;)Ljava/util/Queue;
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "httpUrl"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    const-class v0, Lcom/sec/internal/ims/aec/util/URLExtractor;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v1, "ipAddressQ":Ljava/util/Queue;
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getAllByName(ILjava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 66
    .local v2, "ipAddressArray":[Ljava/net/InetAddress;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 70
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 69
    nop

    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/aec/util/URLExtractor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-object v1

    .line 62
    .end local v1    # "ipAddressQ":Ljava/util/Queue;
    .end local v2    # "ipAddressArray":[Ljava/net/InetAddress;
    .end local p0    # "phoneId":I
    .end local p1    # "httpUrl":Ljava/lang/String;
    .end local p2    # "network":Landroid/net/Network;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
