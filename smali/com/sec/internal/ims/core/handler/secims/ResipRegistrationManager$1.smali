.class Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;
.super Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.source "ResipRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V
    .locals 2
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

    .line 179
    .local p2, "ipAddrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDnsResponse: hostname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ipAddrList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v0, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyDnsResponse(Ljava/util/List;II)V

    .line 181
    return-void
.end method

.method public onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V
    .locals 10
    .param p1, "request"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    .line 147
    const-string v0, "ResipRegiMgr"

    const-string/jumbo v1, "onX509CertVerifyRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 152
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;->certLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 153
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;->cert(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

    move-result-object v4

    .line 154
    .local v4, "cert":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
    const/4 v5, 0x0

    .line 156
    .local v5, "certDataLen":I
    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->certDataLength()I

    move-result v6

    move v5, v6

    .line 160
    :cond_0
    new-array v6, v5, [B

    .line 162
    .local v6, "certData":[B
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    if-ge v7, v5, :cond_1

    .line 163
    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->certData(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "index":I
    :cond_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 167
    .local v7, "curCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subject: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Issuer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v4    # "cert":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;
    .end local v5    # "certDataLen":I
    .end local v6    # "certData":[B
    .end local v7    # "curCert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v3, "something wrong with certificate"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V

    .line 175
    return-void
.end method
