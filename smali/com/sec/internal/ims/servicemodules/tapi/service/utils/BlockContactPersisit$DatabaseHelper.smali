.class public Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BlockContactPersisit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final CREATE_BLOCK_TABLE:Ljava/lang/String; = "CREATE TABLE blockedContacts(id INTEGER PRIMARY KEY AUTOINCREMENT,phone_number TEXT,key_blocked TEXT, key_blocking_timestamp LONG);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "blockContact.db"

.field private static final DATABASE_VERSION:I = 0x1c


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-string v0, "blockContact.db"

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method

.method private createDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const-string v0, "CREATE TABLE blockedContacts(id INTEGER PRIMARY KEY AUTOINCREMENT,phone_number TEXT,key_blocked TEXT, key_blocking_timestamp LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;->createDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 51
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method
