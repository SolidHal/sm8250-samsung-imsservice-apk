.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
.super Ljava/lang/Object;
.source "IARIXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private iariNode:Lorg/w3c/dom/Element;

.field private final mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

.field private mIari:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;

.field private mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

.field private packageNameNode:Lorg/w3c/dom/Element;

.field private packageSignerNode:Lorg/w3c/dom/Element;

.field private signatureNode:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-void
.end method

.method private printErrorMessage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iari xml parse error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIari()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    return-object v0
.end method

.method public getIariNode()Lorg/w3c/dom/Element;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameNode()Lorg/w3c/dom/Element;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getPackageSigner()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSignerNode()Lorg/w3c/dom/Element;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getSignature()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    return-object v0
.end method

.method public getSignatureNode()Lorg/w3c/dom/Element;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;

    .line 73
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 74
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 77
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 78
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 84
    .local v2, "doc":Lorg/w3c/dom/Document;
    nop

    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "encoding":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const-string v1, "Invalid IARI xml: iari-authorization is not encoded with UTF-8"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 92
    :cond_0
    const-string v4, "http://gsma.com/ns/iari-authorisation#"

    const-string v5, "iari-authorisation"

    invoke-interface {v2, v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 93
    .local v5, "authElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-eq v6, v1, :cond_1

    .line 94
    const-string v1, "Invalid IARI xml: invalid number of iari-authorization elements"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 96
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 97
    .local v7, "authElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 98
    const-string v1, "Invalid IARI xml: iari-authorization is not the root element"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 102
    :cond_2
    const-string v8, "iari"

    invoke-interface {v2, v4, v8}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 103
    .local v8, "iariElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-eq v9, v1, :cond_3

    .line 104
    const-string v1, "Invalid IARI xml: invalid number of iari elements"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 106
    :cond_3
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    iput-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    .line 107
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eq v9, v7, :cond_4

    .line 108
    const-string v1, "Invalid IARI xml: iari must be a child of iari-authorization"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 110
    :cond_4
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    const-string v10, "Id"

    invoke-interface {v9, v10, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 111
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    .line 114
    const-string/jumbo v9, "package-name"

    invoke-interface {v2, v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 115
    .local v9, "nameElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 116
    .local v11, "nameElementCount":I
    if-le v11, v1, :cond_5

    .line 117
    const-string v1, "Invalid IARI xml: invalid number of package-name elements"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 119
    :cond_5
    if-ne v11, v1, :cond_7

    .line 120
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    iput-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    .line 121
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    if-eq v12, v7, :cond_6

    .line 122
    const-string v1, "Invalid IARI xml: package-name must be a child of iari-authorization"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 124
    :cond_6
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v12, v10, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 125
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    .line 129
    :cond_7
    const-string/jumbo v12, "package-signer"

    invoke-interface {v2, v4, v12}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 130
    .local v4, "signerElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-eq v12, v1, :cond_8

    .line 131
    const-string v1, "Invalid IARI xml: invalid number of package-signer elements"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 133
    :cond_8
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    iput-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    .line 134
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    if-eq v12, v7, :cond_9

    .line 135
    const-string v1, "Invalid IARI xml: package-signer must be a child of iari-authorization"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 137
    :cond_9
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v12, v10, v1}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 138
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    .line 141
    const-string v10, "http://www.w3.org/2000/09/xmldsig#"

    const-string v12, "Signature"

    invoke-interface {v2, v10, v12}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 142
    .local v10, "signatureElements":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-eq v12, v1, :cond_a

    .line 143
    const-string v1, "Invalid IARI xml: invalid number of ds:Signature elements"

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 145
    :cond_a
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    iput-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    .line 147
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    if-eq v12, v7, :cond_c

    const-string v12, "Invalid IARI xml: signature node must be a child of iari-authorization"

    invoke-direct {p0, v12}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_0

    :cond_b
    move v1, v6

    :cond_c
    :goto_0
    return v1

    .line 82
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "signerElements":Lorg/w3c/dom/NodeList;
    .end local v5    # "authElements":Lorg/w3c/dom/NodeList;
    .end local v7    # "authElement":Lorg/w3c/dom/Element;
    .end local v8    # "iariElements":Lorg/w3c/dom/NodeList;
    .end local v9    # "nameElements":Lorg/w3c/dom/NodeList;
    .end local v10    # "signatureElements":Lorg/w3c/dom/NodeList;
    .end local v11    # "nameElementCount":I
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception reading IARI xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception parsing IARI xml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setSignature(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;)V
    .locals 0
    .param p1, "signature"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "details":Ljava/lang/StringBuilder;
    const-string v1, "authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "iari="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 169
    const-string/jumbo v2, "packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 175
    const-string/jumbo v2, "packageSigner="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
