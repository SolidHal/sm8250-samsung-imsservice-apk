.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;
.super Ljava/lang/Object;
.source "PackageInfoValidator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z
    .locals 4
    .param p1, "authDocument"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched package name:mPackageName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageSigner()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched package signer:mPackageSigner - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v1

    .line 51
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "package details are successfully validated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method private updatePackageSigner()V
    .locals 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 33
    .local v0, "sigs":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->getFingerPrint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePackageSigner: updated package signer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    nop

    .end local v0    # "sigs":[Landroid/content/pm/Signature;
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public processIARIauthorization(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 56
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processIARIauthorization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;-><init>()V

    .line 59
    .local v0, "processor":Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->parseAuthDoc(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getAuthDocument()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    move-result-object v1

    .line 63
    .local v1, "authDocument":Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error validating package details"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v2

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->process()V

    .line 69
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 73
    .end local v1    # "authDocument":Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
    :cond_1
    return-object v2
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->updatePackageSigner()V

    .line 28
    return-void
.end method
