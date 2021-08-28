.class public Lcom/sec/internal/ims/util/StorageEnvironment;
.super Ljava/lang/Object;
.source "StorageEnvironment.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/util/StorageEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/StorageEnvironment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateStorePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "contentName"    # Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/internal/ims/util/StorageEnvironment;->getDefaultStoreDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 41
    .local v3, "extOffset":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 45
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "ext":Ljava/lang/String;
    move-object v6, p0

    .line 49
    .local v6, "newFileName":Ljava/lang/String;
    const/4 v7, 0x1

    .line 51
    .local v7, "count":I
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-static {v1}, Lcom/sec/internal/ims/util/StorageEnvironment;->getDefaultStoreDirectory(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-static {v1}, Lcom/sec/internal/ims/util/StorageEnvironment;->getDefaultStoreDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 57
    return-object v1
.end method

.method private static getDefaultStoreDirectory(I)Ljava/lang/String;
    .locals 2
    .param p0, "shareType"    # I

    .line 73
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 75
    .local v0, "envPath":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 83
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 81
    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 78
    nop

    .line 87
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/util/StorageEnvironment;->getExternalStorageDirectoryCreateIfNotExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "dir":Ljava/lang/String;
    return-object v1
.end method

.method private static getExternalStorageDirectoryCreateIfNotExists(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "envPath"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/util/StorageEnvironment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    return-object v1

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSdCardFreeSpace(Ljava/lang/String;)J
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 104
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    .line 105
    sget-object v2, Lcom/sec/internal/ims/util/StorageEnvironment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "path == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-wide v0

    .line 107
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    sget-object v2, Lcom/sec/internal/ims/util/StorageEnvironment;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path doesn\'t exist: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-wide v0

    .line 112
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    return-wide v1
.end method

.method public static isSdCardStateFine(J)Z
    .locals 3
    .param p0, "requestedStorage"    # J

    .line 62
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Lcom/sec/internal/ims/util/StorageEnvironment;->getExternalStorageDirectoryCreateIfNotExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/sec/internal/ims/util/StorageEnvironment;->getSdCardFreeSpace(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    .local v0, "available":J
    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    .line 66
    const/4 v2, 0x1

    return v2

    .line 69
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
