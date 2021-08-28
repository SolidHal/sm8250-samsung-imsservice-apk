.class public Lcom/sec/internal/ims/aec/util/ExternalStorage;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# static fields
.field static final FILE_NAME_ENTITLEMENT_URL:Ljava/lang/String; = "entitlementURL.txt"

.field static final FILE_NAME_NOTIF_TOKEN:Ljava/lang/String; = "notification registration token.txt"

.field private static final NO_SHIP_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    nop

    .line 16
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/aec/util/ExternalStorage;->NO_SHIP_BUILD:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabHttpUrl()Ljava/lang/String;
    .locals 6

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "labHttpUrl":Ljava/lang/String;
    sget-boolean v1, Lcom/sec/internal/ims/aec/util/ExternalStorage;->NO_SHIP_BUILD:Z

    if-eqz v1, :cond_0

    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 23
    .local v1, "directory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "entitlementURL.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 28
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 30
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static setNotifToken(ILjava/lang/String;)V
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "token"    # Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/sec/internal/ims/aec/util/ExternalStorage;->NO_SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "directory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "notification registration token.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .end local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 45
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "phoneId":I
    .end local p1    # "token":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "phoneId":I
    .restart local p1    # "token":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method
