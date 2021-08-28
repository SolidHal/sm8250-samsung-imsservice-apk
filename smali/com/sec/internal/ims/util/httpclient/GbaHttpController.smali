.class public Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
.super Ljava/lang/Object;
.source "GbaHttpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;


# instance fields
.field private mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

.field private mLastAuthInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-direct {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # [B
    .param p7, "x7"    # [B
    .param p8, "x8"    # Z
    .param p9, "x9"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    invoke-direct/range {p0 .. p9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 46
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isNeedCSFB(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "x2"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/net/URL;
    .param p2, "x2"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p3, "x3"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaCallbacksDeQ(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method private buildUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "bsfIP"    # Ljava/lang/String;
    .param p2, "bsfPort"    # I

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v0, "url":Ljava/lang/StringBuilder;
    const/16 v1, 0x1bb

    if-ne p2, v1, :cond_0

    .line 701
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 703
    :cond_0
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private gbaCallbacksDeQ(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 2
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "gbaKey"    # Ljava/lang/String;
    .param p3, "isGbaSupported"    # Z
    .param p4, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallbacks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    .line 716
    .local v0, "gbaCallback":Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 717
    .end local v0    # "gbaCallback":Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method private gbaFailCallbacksDeQ(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallbacks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    .line 723
    .local v0, "gbaCallback":Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onFail(Ljava/io/IOException;)V

    .line 724
    .end local v0    # "gbaCallback":Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    goto :goto_0

    .line 725
    :cond_0
    return-void
.end method

.method private static getAcceptEncoding(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 802
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 803
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    const-string v1, "*"

    return-object v1

    .line 804
    :cond_1
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .locals 1

    .line 68
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-object v0
.end method

.method private getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 811
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    return-object v0
.end method

.method private hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 748
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    return-object p1

    .line 752
    :cond_0
    move-object v0, p1

    .line 755
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "sip:+[0-9+-]+"

    const-string/jumbo v2, "sip:xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string/jumbo v1, "tel:+[0-9+-]+"

    const-string/jumbo v2, "tel:xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    const-string v1, "imei:+[0-9+-]+"

    const-string v2, "imei:xxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    const-string/jumbo v1, "username=\"+[^\"]+"

    const-string/jumbo v2, "username=xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    const-string v1, "\"+[0-9+-]+\""

    const-string v2, "\"xxxxxxxxxxxxxxx\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    const-string/jumbo v1, "target>+.+</.*target"

    const-string/jumbo v2, "target>xxxxxxxxxxxxxxx</target"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    return-object v0
.end method

.method private static isNeedCSFB(II)Z
    .locals 2
    .param p0, "statusCode"    # I
    .param p1, "phoneId"    # I

    .line 793
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 794
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 795
    const/16 v1, 0x191

    if-ne p0, v1, :cond_0

    .line 796
    const/4 v1, 0x1

    return v1

    .line 798
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private loggingHttpMessage(Ljava/lang/String;I)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 728
    if-nez p1, :cond_0

    .line 729
    return-void

    .line 731
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    return-void

    .line 734
    :cond_1
    const-string v0, "HttpRequestParams.*\r\n.*mMethod: "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 735
    const-string v0, "HttpResponseParams.*\r\n.*mStatusCode="

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 736
    const-string v0, "\r\n.*mUrl: "

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 739
    .local v9, "msg":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 740
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v10, v0

    .line 741
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 742
    .local v11, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v3, 0x64

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v2, v9

    move v4, p2

    move-object v5, v11

    invoke-interface/range {v0 .. v8}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 3
    .param p1, "method"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .param p5, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ")",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 773
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 775
    .local v0, "newRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 779
    :cond_0
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 783
    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 784
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 785
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 786
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 787
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 789
    return-object v0
.end method

.method private sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 21
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "wwwAuthParsedHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p4, "bsfServer"    # Ljava/lang/String;
    .param p5, "imei"    # Ljava/lang/String;
    .param p6, "gbaType"    # [B
    .param p7, "nafId"    # [B
    .param p8, "isGbaSupported"    # Z
    .param p9, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 551
    move-object/from16 v10, p0

    move/from16 v11, p8

    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GBA: sendBsfRequestWithAuthorization(): username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v1, v11, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;

    move-result-object v19

    .line 554
    .local v19, "akakeys":Lcom/sec/internal/ims/gba/params/GbaData;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 555
    .local v8, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Host"

    move-object/from16 v7, p4

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBA-service; 0.1; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    const-string v1, "3gpp-gba-uicc"

    goto :goto_0

    :cond_0
    const-string v1, "3gpp-gba"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v6, p5

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 557
    :cond_1
    move-object/from16 v6, p5

    .line 560
    :goto_1
    if-nez v19, :cond_2

    .line 561
    new-instance v0, Ljava/io/IOException;

    const-string v1, "GBA FAIL akakeys null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(Ljava/io/IOException;)V

    .line 562
    return-void

    .line 564
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "akaPassword":Ljava/lang/String;
    const-string v0, "dc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Authorization"

    if-eqz v0, :cond_5

    .line 568
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBsfRequestWithAuthorization - AUTH_SQN_FAIL, akaPassword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 570
    .local v4, "simResponse":[B
    const/4 v0, 0x0

    .line 571
    .local v0, "autslen":I
    array-length v2, v4

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-le v2, v12, :cond_4

    .line 572
    aget-byte v20, v4, v12

    .line 579
    .end local v0    # "autslen":I
    .local v20, "autslen":I
    if-lez v20, :cond_3

    .line 580
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, v20, 0x2

    const/4 v3, 0x2

    invoke-static {v4, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v17, v0

    .line 586
    .local v17, "auts":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v14

    const-string v13, ""

    const-string v15, "GET"

    const-string v16, "/"

    move-object/from16 v12, p2

    move-object/from16 v18, p3

    invoke-static/range {v12 .. v18}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v12, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object v13, v4

    .end local v4    # "simResponse":[B
    .local v13, "simResponse":[B
    move-object/from16 v4, p1

    move-object v14, v5

    .end local v5    # "akaPassword":Ljava/lang/String;
    .local v14, "akaPassword":Ljava/lang/String;
    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v15, v8

    .end local v8    # "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 630
    .end local v13    # "simResponse":[B
    .end local v17    # "auts":Ljava/lang/String;
    .end local v20    # "autslen":I
    .local v0, "BsfRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    move-object v6, v0

    goto :goto_2

    .line 582
    .end local v0    # "BsfRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .end local v14    # "akaPassword":Ljava/lang/String;
    .end local v15    # "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "simResponse":[B
    .restart local v5    # "akaPassword":Ljava/lang/String;
    .restart local v8    # "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "autslen":I
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "Invalid autslen."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-direct {v10, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(Ljava/io/IOException;)V

    .line 584
    return-void

    .line 574
    .end local v20    # "autslen":I
    .local v0, "autslen":I
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v2, "Invalid simResponse."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-direct {v10, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(Ljava/io/IOException;)V

    .line 576
    return-void

    .line 631
    .end local v0    # "autslen":I
    .end local v4    # "simResponse":[B
    :cond_5
    move-object v14, v5

    move-object v15, v8

    .end local v5    # "akaPassword":Ljava/lang/String;
    .end local v8    # "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "akaPassword":Ljava/lang/String;
    .restart local v15    # "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET"

    const-string v7, "/"

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v8, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ZLcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;[B[BLcom/sec/internal/ims/gba/params/GbaData;)V

    move-object v6, v0

    .line 686
    .local v6, "BsfRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    :goto_2
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 688
    .local v0, "bsfRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 689
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v3, "GBA: Bsf disable Tls"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 693
    :cond_6
    const v1, 0x31000001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",>,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 695
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    .line 696
    return-void
.end method

.method private sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 28
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p3, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "gbaUicc"    # Z

    .line 219
    move-object/from16 v7, p0

    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "GBA: sendRequestWithAuthorization()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v8

    .line 224
    .local v8, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "WWW-Authenticate"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 225
    .local v1, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v1

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    move-object v9, v1

    .line 228
    .end local v1    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v9, :cond_13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v2, p2

    goto/16 :goto_b

    .line 234
    :cond_2
    new-instance v0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    move-object v10, v0

    .line 235
    .local v10, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 236
    .local v12, "headerValue":Ljava/lang/String;
    invoke-virtual {v10, v12}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v13

    .line 237
    .local v13, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v2, p2

    goto/16 :goto_a

    .line 241
    :cond_3
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, "realms":[Ljava/lang/String;
    const-string v0, ""

    .line 243
    .local v0, "realm":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v15

    .line 245
    .local v15, "fqdn":Ljava/lang/String;
    array-length v1, v14

    move v2, v11

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v14, v2

    .line 246
    .local v3, "val":Ljava/lang/String;
    const-string/jumbo v4, "uicc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p6, :cond_4

    .line 247
    move-object v0, v3

    .line 248
    move-object/from16 v26, v0

    goto :goto_3

    .line 249
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez p6, :cond_5

    .line 250
    move-object v0, v3

    .line 251
    move-object/from16 v26, v0

    goto :goto_3

    .line 245
    .end local v3    # "val":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v26, v0

    .line 257
    .end local v0    # "realm":Ljava/lang/String;
    .local v26, "realm":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v6

    .line 258
    .local v6, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    iget-object v5, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 259
    .local v5, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 260
    .local v27, "qop":[Ljava/lang/String;
    iget-object v0, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 261
    iget-object v0, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    .line 264
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v2, "/"

    if-ne v0, v1, :cond_a

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "fullUrl":Ljava/lang/String;
    :goto_4
    nop

    .line 267
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v22, v2

    goto :goto_5

    :cond_9
    move-object/from16 v22, v0

    .line 268
    :goto_5
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v23

    aget-object v24, v27, v11

    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 266
    move-object/from16 v16, v5

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, v26

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v25}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v0    # "fullUrl":Ljava/lang/String;
    goto :goto_7

    .line 270
    :cond_a
    nop

    .line 271
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v22, v2

    goto :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 272
    :goto_6
    invoke-virtual {v13}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v23

    aget-object v24, v27, v11

    .line 270
    move-object/from16 v16, v5

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, v26

    invoke-virtual/range {v16 .. v24}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_7
    invoke-static {v5, v13}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "authHeader":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 278
    .local v3, "nafRequestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Host"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "Authorization"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    if-ne v0, v1, :cond_c

    .line 285
    iget-object v0, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-TMUS-IMEI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 290
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-3GPP-Intended-Identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_e
    new-instance v16, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    .end local v3    # "nafRequestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "nafRequestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, p1

    move-object/from16 v18, v4

    .end local v4    # "authHeader":Ljava/lang/String;
    .local v18, "authHeader":Ljava/lang/String;
    move-object/from16 v4, p4

    move-object/from16 v19, v5

    .end local v5    # "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .local v19, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    move-object/from16 v5, p5

    move-object/from16 v20, v6

    .end local v6    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .local v20, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 428
    .local v4, "nafRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 430
    .local v0, "nafRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    if-ne v1, v2, :cond_f

    .line 431
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 434
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_10

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    .line 437
    .local v1, "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 438
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_8

    .line 435
    .end local v1    # "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    :cond_10
    move-object/from16 v2, p2

    .line 440
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_9

    .line 434
    :cond_11
    move-object/from16 v2, p2

    .line 443
    :goto_9
    const v1, 0x31000001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",>,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 445
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v11}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    .line 446
    return-void

    .line 237
    .end local v0    # "nafRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .end local v4    # "nafRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .end local v14    # "realms":[Ljava/lang/String;
    .end local v15    # "fqdn":Ljava/lang/String;
    .end local v17    # "nafRequestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "authHeader":Ljava/lang/String;
    .end local v19    # "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .end local v20    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .end local v26    # "realm":Ljava/lang/String;
    .end local v27    # "qop":[Ljava/lang/String;
    :cond_12
    move-object/from16 v2, p2

    .line 238
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "realm or Qop is null"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 239
    return-void

    .line 228
    .end local v10    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v12    # "headerValue":Ljava/lang/String;
    .end local v13    # "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    :cond_13
    move-object/from16 v2, p2

    .line 229
    :goto_b
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestWithAuthorization(): missing header: WWW-Authenticate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 231
    return-void
.end method

.method private storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 815
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;)V

    .line 816
    .local v0, "newLastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    new-instance v1, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    .line 817
    .local v1, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 818
    iput-object p1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 819
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-void
.end method

.method private useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 5
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 449
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 450
    .local v0, "headers":Ljava/util/Map;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    sget-object v2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "useGba(): no headers"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return v1

    .line 454
    :cond_0
    const-string v2, "User-Agent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 455
    .local v2, "userAgent":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 456
    sget-object v3, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "useGba(): no headerUser-Agent"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return v1

    .line 459
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useGba(): User-Agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "3gpp-gba"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public clearLastAuthInfo()V
    .locals 2

    .line 72
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "clearLastAuthInfo()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->initGbaAccessibleObj()Z

    .line 75
    return-void
.end method

.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 10
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 79
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 81
    .local v0, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 84
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .local v3, "tUrl":Ljava/net/URL;
    nop

    .line 90
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v2, "execute(): send exist BTID and gbaKey."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 92
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "keyLifeTime":Ljava/util/Date;
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    .line 104
    move-object v9, v2

    goto :goto_0

    .line 96
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e1":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    .line 98
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 99
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 100
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 101
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 102
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 103
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    move-object v9, v2

    .line 106
    .end local v2    # "keyLifeTime":Ljava/util/Date;
    .end local v5    # "e1":Ljava/text/ParseException;
    .local v9, "keyLifeTime":Ljava/util/Date;
    :goto_0
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isKeyExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    if-eqz v2, :cond_0

    .line 107
    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    return-void

    .line 110
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v5, "Btid LifeTime expired"

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    goto :goto_1

    .line 85
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "tUrl":Ljava/net/URL;
    .end local v9    # "keyLifeTime":Ljava/util/Date;
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 87
    return-void

    .line 115
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 116
    .local v1, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v8

    .line 117
    .local v8, "method":Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    new-instance v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;

    invoke-direct {v6, p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 206
    .local v6, "NafRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, v8

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    .line 208
    .local v2, "nafRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 212
    :cond_2
    const v3, 0x31000001

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",>,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 214
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public isKeyExpired(Ljava/util/Date;)Z
    .locals 12
    .param p1, "keyLifeTime"    # Ljava/util/Date;

    .line 466
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 467
    return v0

    .line 469
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 471
    .local v2, "threshold":I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 472
    .local v3, "currentdate":Ljava/util/Date;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 473
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    int-to-long v8, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_1
    return v0
.end method

.method public sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 17
    .param p1, "bsfServer"    # Ljava/lang/String;
    .param p2, "bsfPort"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "imei"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "gbaType"    # [B
    .param p7, "nafId"    # [B
    .param p8, "isGbaSupported"    # Z
    .param p9, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 482
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->buildUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 484
    .local v11, "url":Ljava/lang/String;
    iget-object v0, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 485
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 486
    .local v12, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Host"

    move-object/from16 v13, p1

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBA-service; 0.1; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_1

    const-string v1, "3gpp-gba-uicc"

    goto :goto_0

    :cond_1
    const-string v1, "3gpp-gba"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v0, "/"

    const-string v1, ""

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    invoke-static {v14, v15, v0, v1, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v9, p4

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 490
    :cond_2
    move-object/from16 v9, p4

    .line 493
    :goto_1
    new-instance v16, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    move-object/from16 v4, v16

    .line 536
    .local v4, "BsfRequestCallback":Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 538
    .local v0, "bsfRequestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 539
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendBsfRequest() Bsf disable Tls"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 543
    :cond_3
    const v1, 0x31000001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",>,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 545
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    .line 546
    return-void
.end method
