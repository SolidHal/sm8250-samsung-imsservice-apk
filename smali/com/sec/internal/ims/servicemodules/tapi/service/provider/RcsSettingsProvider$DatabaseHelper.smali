.class Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RcsSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x67


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 97
    const-string/jumbo v0, "rcs_settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x67

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 98
    return-void
.end method

.method private addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO settings (key,value) VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    const-string v0, "CREATE TABLE settings (id integer primary key autoincrement,key TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceActivated"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigurationValidity"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceAvailable"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeable"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 115
    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinimumBatteryLevel"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMessagingMethod"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessagingMode"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "MyCountryCode"

    const-string v1, "+1"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "CountryAreaCode"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "MyContactId"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "MyDisplayName"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "ChatRespondToDisplayReports"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    nop

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v2, "AutoAcceptFtChangeable"

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    nop

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "AutoAcceptFileTransfer"

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    nop

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "AutoAcceptFtInRoaming"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;->DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    .line 136
    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "ImageResizeOption"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 205
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .line 156
    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 157
    .local v1, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string/jumbo v3, "settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 160
    .local v2, "oldDataCursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 163
    const-string v3, "key"

    if-eqz v2, :cond_3

    .line 164
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 168
    .local v6, "index":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 169
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 171
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 172
    if-eq v6, v7, :cond_1

    .line 173
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 175
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 176
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_2
    goto :goto_0

    .line 183
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v2    # "oldDataCursor":Landroid/database/Cursor;
    :cond_4
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 192
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 193
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "settings"

    invoke-virtual {p1, v6, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v4    # "whereClause":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 157
    .local v2, "oldDataCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v0
.end method
