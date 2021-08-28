.class public abstract Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.super Ljava/lang/Object;
.source "StackEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactActivated(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 24
    return-void
.end method

.method public onDeregistered(ILcom/sec/ims/util/SipError;I)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "retryAfter"    # I

    .line 28
    return-void
.end method

.method public onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "handle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 35
    .local p2, "IpAddrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onISIMAuthRequested(ILjava/lang/String;I)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "tid"    # I

    .line 12
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 0
    .param p1, "handle"    # I

    .line 47
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p1, "handle"    # I
    .param p3, "isRegi"    # I
    .param p4, "contactUriType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    .local p2, "contactUriInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRegImpuNotification(ILjava/lang/String;)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "impu"    # Ljava/lang/String;

    .line 21
    return-void
.end method

.method public onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "regInfo"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 39
    return-void
.end method

.method public onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;IILjava/lang/String;)V
    .locals 0
    .param p1, "handle"    # I
    .param p4, "error"    # Lcom/sec/ims/util/SipError;
    .param p5, "retryAfter"    # I
    .param p6, "ecmpMode"    # I
    .param p7, "sipResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/util/SipError;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    .local p2, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onSubscribed(ILcom/sec/ims/util/SipError;)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 32
    return-void
.end method

.method public onUpdatePani()V
    .locals 0

    .line 43
    return-void
.end method

.method public onUpdateRouteTableRequested(IILjava/lang/String;)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "operation"    # I
    .param p3, "ipAddress"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    .line 55
    return-void
.end method
