.class Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;
.super Ljava/lang/Object;
.source "IARIXmlProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return-void
.end method

.method private validateCertificateOtherProperties()I
    .locals 7

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateCertificateOtherProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getSignature()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->getEntityCertificate()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    move-result-object v0

    .line 68
    .local v0, "entityCert":Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->getURIIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 69
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "urn:urn-7:3gpp-application.ims.iari.rcs.ext.ss."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v2

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 78
    .local v1, "entityPublicKey":[B
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->hash([B)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "keyHash":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "authValue":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Requested IARI key-specific part does not match signing key"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v2

    .line 84
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v2
.end method


# virtual methods
.method public getAuthDocument()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v0
.end method

.method public parseAuthDoc(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    .line 25
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->parse(Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    .line 29
    return-void
.end method

.method public process()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "process: auth doc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    .line 35
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    .local v0, "expectedRefs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIariNode()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Id"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageSignerNode()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageNameNode()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 42
    .local v1, "packageNameNode":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->validateCertificateOtherProperties()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    .line 48
    if-eqz v2, :cond_2

    .line 49
    return-void

    .line 51
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    .line 52
    return-void
.end method
