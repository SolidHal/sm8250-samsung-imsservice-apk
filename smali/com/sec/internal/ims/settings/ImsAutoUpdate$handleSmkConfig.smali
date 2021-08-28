.class public Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;
.super Ljava/lang/Object;
.source "ImsAutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsAutoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "handleSmkConfig"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "handleSmkConfig"


# instance fields
.field private mCachedSmkConfig:Lcom/google/gson/JsonObject;

.field private mContext:Landroid/content/Context;

.field private final mDownloadedSmkConfig:Ljava/io/File;

.field private mHasNewSmkConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    .line 960
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "smkconfig.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    .line 961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    .line 962
    return-void
.end method


# virtual methods
.method public clearSmkConfig()V
    .locals 3

    .line 999
    const-string v0, "handleSmkConfig"

    const-string v1, "Clear Smk Config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_1

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1004
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->disableSmkConfig()V

    .line 1005
    const-string v1, "Clear Smk Config Successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :cond_0
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "has problem for delete Smk Config"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    .line 1012
    :cond_1
    return-void
.end method

.method public disableSmkConfig()V
    .locals 1

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    .line 1016
    return-void
.end method

.method public getSmkConfig()Lcom/google/gson/JsonObject;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public hasNewSmkConfig()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 968
    .local v0, "downloadConfig":[B
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 969
    .local v1, "parser":Lcom/google/gson/JsonParser;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v0    # "downloadConfig":[B
    .end local v1    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 975
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public saveSmkConfig(Lcom/google/gson/JsonObject;)V
    .locals 4
    .param p1, "config"    # Lcom/google/gson/JsonObject;

    .line 978
    const-string v0, "handleSmkConfig"

    const-string v1, "Save downloaded Smk Config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 985
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 986
    const-string v1, "Store downloaded Smk Config complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 992
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
