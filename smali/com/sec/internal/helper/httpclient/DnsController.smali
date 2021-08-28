.class public Lcom/sec/internal/helper/httpclient/DnsController;
.super Ljava/lang/Object;
.source "DnsController.java"

# interfaces
.implements Lcom/squareup/okhttp/Dns;


# static fields
.field private static final BUF_SIZE:I = 0x800

.field private static final DNS_PORT:I = 0x35

.field private static final TAG:Ljava/lang/String; = "DnsController"

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x2

.field public static final TYPE_AAAA_PREF:I = 0x6

.field public static final TYPE_A_PREF:I = 0x5

.field public static final TYPE_NAPTR:I = 0x3

.field static mListBsf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field static mListNaf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreBsfname:Ljava/lang/String;

.field private static mPreNafname:Ljava/lang/String;


# instance fields
.field bsfRetryCounter:I

.field isNaf:Z

.field mDnsAddress:Ljava/net/InetAddress;

.field mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field mDnsType:I

.field mMno:Lcom/sec/internal/constants/Mno;

.field mNetwork:Landroid/net/Network;

.field mSrvRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/SRVRecord;",
            ">;"
        }
    .end annotation
.end field

.field retryCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V
    .locals 1
    .param p1, "retryCounter"    # I
    .param p2, "bsfRetryCounter"    # I
    .param p3, "net"    # Landroid/net/Network;
    .param p5, "type"    # I
    .param p6, "isNaf"    # Z
    .param p7, "mno"    # Lcom/sec/internal/constants/Mno;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/sec/internal/constants/Mno;",
            ")V"
        }
    .end annotation

    .line 60
    .local p4, "dnsAddr":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    .line 61
    iput p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    .line 62
    iput p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    .line 63
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    .line 64
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    .line 65
    iput-boolean p6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 66
    iput p5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    .line 67
    iput-object p7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    .line 68
    return-void
.end method

.method public static correctServerAddr(II)V
    .locals 3
    .param p0, "retryCounter"    # I
    .param p1, "bsfRetryCounter"    # I

    .line 439
    const/4 v0, 0x0

    if-lez p0, :cond_0

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 440
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 441
    .local v1, "nafTemp":Ljava/net/InetAddress;
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 445
    .end local v1    # "nafTemp":Ljava/net/InetAddress;
    :cond_0
    if-lez p1, :cond_1

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 446
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 447
    .local v1, "bsfTemp":Ljava/net/InetAddress;
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 450
    .end local v1    # "bsfTemp":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method public static getBsfAddrSize()I
    .locals 1

    .line 435
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDnsA(Ljava/lang/String;)V
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .line 370
    const-string v0, "DnsController"

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 371
    .local v1, "result":Ljava/net/InetAddress;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDnsA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v2, :cond_3

    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "contain":Z
    sget-object v3, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 375
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    const/4 v2, 0x1

    .line 377
    goto :goto_1

    .line 379
    .end local v4    # "address":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 382
    sget-object v3, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v2    # "contain":Z
    :cond_2
    goto :goto_4

    .line 385
    :cond_3
    const/4 v2, 0x0

    .line 386
    .restart local v2    # "contain":Z
    sget-object v3, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 387
    .restart local v4    # "address":Ljava/net/InetAddress;
    invoke-virtual {v4, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    const/4 v2, 0x1

    .line 389
    goto :goto_3

    .line 391
    .end local v4    # "address":Ljava/net/InetAddress;
    :cond_4
    goto :goto_2

    .line 393
    :cond_5
    :goto_3
    if-nez v2, :cond_6

    .line 394
    sget-object v3, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v1    # "result":Ljava/net/InetAddress;
    .end local v2    # "contain":Z
    :cond_6
    :goto_4
    goto :goto_5

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDnsA: error with domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualA() called with: domain = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "result":[Lorg/xbill/DNS/Record;
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 285
    .local v3, "dns":Ljava/net/InetAddress;
    iput-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 286
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 288
    goto :goto_1

    .line 289
    :cond_0
    iget v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 290
    const/16 v4, 0x1c

    invoke-direct {p0, p1, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 292
    goto :goto_1

    .line 293
    :cond_1
    if-nez v0, :cond_2

    .line 294
    const-string v4, "A and AAAA type query failed,try next IP"

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    goto :goto_0

    .line 298
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 300
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualAAAA() called with: domain = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "result":[Lorg/xbill/DNS/Record;
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 263
    .local v3, "dns":Ljava/net/InetAddress;
    iput-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 264
    const/16 v4, 0x1c

    invoke-direct {p0, p1, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 266
    goto :goto_1

    .line 267
    :cond_0
    iget v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 268
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 270
    goto :goto_1

    .line 271
    :cond_1
    if-nez v0, :cond_2

    .line 272
    const-string v4, "AAAA and A type query failed,try next IP"

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    goto :goto_0

    .line 276
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_2
    goto :goto_0

    .line 278
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsNAPTR() called with: domain = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, "result":[Lorg/xbill/DNS/Record;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 239
    const/16 v1, 0x23

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 17
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "DnsController"

    const/4 v4, 0x0

    .line 195
    .local v4, "result":[Lorg/xbill/DNS/Record;
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v5, v0

    .line 196
    .local v5, "udpSocket":Ljava/net/DatagramSocket;
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 197
    .local v6, "mDomain":Ljava/lang/String;
    const/4 v7, -0x1

    .line 199
    .local v7, "resultCode":I
    :try_start_0
    invoke-static {v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x1

    move/from16 v10, p2

    :try_start_1
    invoke-static {v0, v10, v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 200
    .local v0, "question":Lorg/xbill/DNS/Record;
    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v11

    .line 202
    .local v11, "query":Lorg/xbill/DNS/Message;
    iget-object v12, v1, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v12, v5}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 204
    invoke-virtual {v11}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v12

    .line 205
    .local v12, "sendData":[B
    new-instance v13, Ljava/net/DatagramPacket;

    array-length v14, v12

    iget-object v15, v1, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v8, 0x35

    invoke-direct {v13, v12, v14, v15, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v8, v13

    .line 206
    .local v8, "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 208
    const/16 v13, 0x800

    new-array v13, v13, [B

    .line 209
    .local v13, "recvData":[B
    new-instance v14, Ljava/net/DatagramPacket;

    array-length v15, v13

    invoke-direct {v14, v13, v15}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 210
    .local v14, "recvPacket":Ljava/net/DatagramPacket;
    const/16 v15, 0x3e8

    invoke-virtual {v5, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 211
    invoke-virtual {v5, v14}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 213
    new-instance v15, Lorg/xbill/DNS/Message;

    invoke-virtual {v14}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    invoke-direct {v15, v9}, Lorg/xbill/DNS/Message;-><init>([B)V

    move-object v9, v15

    .line 215
    .local v9, "answer":Lorg/xbill/DNS/Message;
    invoke-virtual {v9}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v15

    move v7, v15

    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "question":Lorg/xbill/DNS/Record;
    .local v16, "question":Lorg/xbill/DNS/Record;
    const-string/jumbo v0, "result is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-nez v7, :cond_1

    .line 218
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 227
    .end local v8    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v9    # "answer":Lorg/xbill/DNS/Message;
    .end local v11    # "query":Lorg/xbill/DNS/Message;
    .end local v12    # "sendData":[B
    .end local v13    # "recvData":[B
    .end local v14    # "recvPacket":Ljava/net/DatagramPacket;
    .end local v16    # "question":Lorg/xbill/DNS/Record;
    :cond_1
    nop

    .line 228
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 231
    return-object v4

    .line 227
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 223
    :catch_0
    move-exception v0

    goto :goto_1

    .line 220
    :catch_1
    move-exception v0

    goto :goto_2

    .line 227
    :catchall_1
    move-exception v0

    move/from16 v10, p2

    goto :goto_3

    .line 223
    :catch_2
    move-exception v0

    move/from16 v10, p2

    .line 224
    .local v0, "ex":Ljava/lang/NullPointerException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    nop

    .line 227
    nop

    .line 228
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 225
    const/4 v3, 0x0

    return-object v3

    .line 220
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    move/from16 v10, p2

    .line 221
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "DNS query timeout, try next type or IP"

    invoke-static {v3, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    nop

    .line 227
    nop

    .line 228
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 222
    const/4 v3, 0x0

    return-object v3

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 230
    throw v0
.end method

.method private getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsSRV() called with: domain = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "result":[Lorg/xbill/DNS/Record;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 251
    const/16 v1, 0x21

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 304
    const-string v0, "DnsController"

    const/4 v1, 0x0

    .line 306
    .local v1, "result":[Lorg/xbill/DNS/Record;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    move-object v1, v2

    .line 307
    if-eqz v1, :cond_b

    array-length v2, v1

    if-lez v2, :cond_b

    .line 308
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    aget-object v4, v1, v3

    .line 309
    .local v4, "temp":Lorg/xbill/DNS/Record;
    const/4 v5, 0x0

    .line 310
    .local v5, "tempAddr":Ljava/net/InetAddress;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 311
    move-object v6, v4

    check-cast v6, Lorg/xbill/DNS/ARecord;

    .line 312
    .local v6, "nRecord":Lorg/xbill/DNS/ARecord;
    if-eqz v6, :cond_0

    .line 313
    invoke-virtual {v6}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v5, v7

    .line 315
    .end local v6    # "nRecord":Lorg/xbill/DNS/ARecord;
    :cond_0
    goto :goto_1

    :cond_1
    const/16 v6, 0x1c

    if-ne p2, v6, :cond_0

    .line 316
    move-object v6, v4

    check-cast v6, Lorg/xbill/DNS/AAAARecord;

    .line 317
    .local v6, "nRecord":Lorg/xbill/DNS/AAAARecord;
    if-eqz v6, :cond_2

    .line 318
    invoke-virtual {v6}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v5, v7

    .line 322
    .end local v6    # "nRecord":Lorg/xbill/DNS/AAAARecord;
    :cond_2
    :goto_1
    if-eqz v5, :cond_a

    .line 323
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    const-string v6, "chn not supported IPv6 addr"

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    goto :goto_6

    .line 328
    :cond_3
    iget-boolean v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v6, :cond_7

    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, "contain":Z
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 331
    .local v8, "address":Ljava/net/InetAddress;
    invoke-virtual {v8, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 332
    const/4 v6, 0x1

    .line 333
    goto :goto_3

    .line 335
    .end local v8    # "address":Ljava/net/InetAddress;
    :cond_4
    goto :goto_2

    .line 337
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 338
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v6    # "contain":Z
    :cond_6
    goto :goto_6

    .line 341
    :cond_7
    const/4 v6, 0x0

    .line 342
    .restart local v6    # "contain":Z
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 343
    .restart local v8    # "address":Ljava/net/InetAddress;
    invoke-virtual {v8, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 344
    const/4 v6, 0x1

    .line 345
    goto :goto_5

    .line 347
    .end local v8    # "address":Ljava/net/InetAddress;
    :cond_8
    goto :goto_4

    .line 349
    :cond_9
    :goto_5
    if-nez v6, :cond_a

    .line 350
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v4    # "temp":Lorg/xbill/DNS/Record;
    .end local v5    # "tempAddr":Ljava/net/InetAddress;
    .end local v6    # "contain":Z
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 358
    :cond_b
    goto :goto_7

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-boolean v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez v2, :cond_e

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    .line 361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 362
    :cond_d
    const-string v2, "chn find no valid addr, return null"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_e
    return-object v1
.end method

.method public static getNafAddrSize()I
    .locals 1

    .line 431
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getNaptrRecord(Ljava/lang/String;)V
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;

    .line 148
    const-string v0, "HTTP+D2T"

    .line 150
    .local v0, "service":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 151
    .local v1, "naptrRecords":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 152
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 153
    .local v4, "temp":Lorg/xbill/DNS/Record;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 154
    goto :goto_2

    .line 156
    :cond_0
    move-object v5, v4

    check-cast v5, Lorg/xbill/DNS/NAPTRRecord;

    .line 157
    .local v5, "nRecord":Lorg/xbill/DNS/NAPTRRecord;
    invoke-virtual {v5}, Lorg/xbill/DNS/NAPTRRecord;->getService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-virtual {v5}, Lorg/xbill/DNS/NAPTRRecord;->getReplacement()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v6

    .line 159
    .local v6, "srvRecords":[Lorg/xbill/DNS/Record;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 160
    invoke-direct {p0, v6}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 161
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xbill/DNS/SRVRecord;

    .line 162
    .local v8, "i":Lorg/xbill/DNS/SRVRecord;
    invoke-virtual {v8}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "mTarget":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    .line 164
    .end local v8    # "i":Lorg/xbill/DNS/SRVRecord;
    .end local v9    # "mTarget":Ljava/lang/String;
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 166
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    .line 152
    .end local v4    # "temp":Lorg/xbill/DNS/Record;
    .end local v5    # "nRecord":Lorg/xbill/DNS/NAPTRRecord;
    .end local v6    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_4
    const-string v2, "DnsController"

    const-string/jumbo v3, "sendDns: NAPTR is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "_http."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    move-object v3, p1

    .local v3, "query":Ljava/lang/String;
    goto :goto_3

    .line 176
    .end local v3    # "query":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_http._tcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "query":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 180
    .local v4, "srvRecords":[Lorg/xbill/DNS/Record;
    if-eqz v4, :cond_7

    array-length v5, v4

    if-lez v5, :cond_7

    .line 181
    invoke-direct {p0, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 182
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/SRVRecord;

    .line 183
    .local v5, "i":Lorg/xbill/DNS/SRVRecord;
    invoke-virtual {v5}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "mTarget":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    .line 185
    .end local v5    # "i":Lorg/xbill/DNS/SRVRecord;
    .end local v6    # "mTarget":Ljava/lang/String;
    goto :goto_4

    :cond_6
    goto :goto_5

    .line 187
    :cond_7
    const-string/jumbo v5, "sendDns: SRV direct error"

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    .line 191
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_8
    :goto_5
    return-void
.end method

.method private sendDns(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requst dns query with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getNaptrRecord(Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    .line 138
    nop

    .line 145
    :goto_0
    return-void
.end method

.method private sortSRV([Lorg/xbill/DNS/Record;)V
    .locals 10
    .param p1, "records"    # [Lorg/xbill/DNS/Record;

    .line 404
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 406
    .local v2, "record":Lorg/xbill/DNS/Record;
    move-object v3, v2

    check-cast v3, Lorg/xbill/DNS/SRVRecord;

    .line 407
    .local v3, "sRecord":Lorg/xbill/DNS/SRVRecord;
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DnsController"

    if-nez v4, :cond_0

    .line 408
    const-string/jumbo v4, "sortSRV: 1st Record"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    :cond_0
    const/4 v4, 0x0

    .line 412
    .local v4, "record_add":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    if-nez v4, :cond_3

    .line 413
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/SRVRecord;

    .line 414
    .local v7, "temp":Lorg/xbill/DNS/SRVRecord;
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 415
    const-string/jumbo v8, "sortSRV: Update SRV better, lower priority"

    invoke-static {v5, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v8, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    const/4 v4, 0x1

    goto :goto_2

    .line 418
    :cond_1
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 419
    const-string/jumbo v8, "sortSRV: Update SRV better, higher weight"

    invoke-static {v5, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v8, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 421
    const/4 v4, 0x1

    .line 412
    .end local v7    # "temp":Lorg/xbill/DNS/SRVRecord;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 424
    .end local v6    # "i":I
    :cond_3
    if-nez v4, :cond_4

    .line 425
    iget-object v5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "record":Lorg/xbill/DNS/Record;
    .end local v3    # "sRecord":Lorg/xbill/DNS/SRVRecord;
    .end local v4    # "record_add":Z
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_5
    return-void
.end method


# virtual methods
.method public getRetryCounter()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    return v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup: send DNS with hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreNafname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreBsfname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DnsController"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v1, :cond_1

    .line 76
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 78
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez v1, :cond_3

    .line 80
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 82
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    .line 85
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 86
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_4
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 88
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    :cond_5
    :goto_1
    return-object v0
.end method

.method public setNaf(Z)V
    .locals 0
    .param p1, "naf"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 126
    return-void
.end method
