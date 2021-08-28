.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
.super Ljava/lang/Object;
.source "ServiceExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;
    }
.end annotation


# static fields
.field private static final CLIENT_JOYN_NAME:Ljava/lang/String; = "gsma.joyn.client"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;


# instance fields
.field private final clientAppInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

.field private final processedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isPackageProcessed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authorise(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->unAuthorise(Ljava/lang/String;)V

    return-void
.end method

.method private authorise(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 171
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "auth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 173
    :cond_0
    return-void
.end method

.method private authoriseAllClients()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isPackageProcessed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 152
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isSystemApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "auth"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 159
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 160
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 161
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    :cond_3
    goto :goto_0

    .line 162
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_4
    return-void
.end method

.method private authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 113
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "processor":Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->setPackageName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->processIARIauthorization(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "iari":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tag is authorised for the package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unAuthorised tag or validation error for the package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug binary, ignore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v1, "default-tag"

    .line 125
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->persistIariTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->closeInputStream(Ljava/io/InputStream;)V

    .line 130
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 187
    if-eqz p1, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 51
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "resName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "raw"

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 211
    .local v2, "checkExistence":I
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 216
    .end local v1    # "resName":Ljava/lang/String;
    .end local v2    # "checkExistence":I
    :cond_0
    goto :goto_0

    .line 214
    .end local v0    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no auth doc found in client application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAppAuthorised(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "current package: ignore"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v2

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 249
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 250
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ApplicationInfo is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 253
    :cond_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isSystemApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "system application: ignore"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v2

    .line 257
    :cond_2
    const-string v3, "iari_app_association"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 259
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "iaritag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Package name not authorized"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v1

    .line 265
    :cond_3
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "decrypted_iaritag":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decrypted iari"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v2

    .line 270
    .end local v1    # "decrypted_iaritag":Ljava/lang/String;
    .end local v4    # "iaritag":Ljava/lang/String;
    :cond_4
    return v1
.end method

.method private static isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 223
    return v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 226
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error retrieving the package details "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isPackageProcessed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemApp(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 201
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadClients()V
    .locals 7

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 96
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 100
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 103
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    goto :goto_2

    .line 106
    :cond_2
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, 0x0

    const-string v6, "gsma.joyn.client"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_3
    goto :goto_2

    .line 110
    :cond_4
    return-void
.end method

.method private loadProcessesPackages()V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v1, "iari_app_association"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 83
    .local v1, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 84
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private persistIariTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iari"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v1, "iari_app_association"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    .line 137
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method

.method private unAuthorise(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unAuthorise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v1, "iari_app_association"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 180
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 55
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    .line 63
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->loadProcessesPackages()V

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->loadClients()V

    .line 67
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseAllClients()V

    .line 68
    return-void
.end method

.method public stop()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    .line 77
    :cond_0
    return-void
.end method
