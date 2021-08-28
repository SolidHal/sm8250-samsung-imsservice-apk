.class public final Lcom/sec/internal/ims/settings/SettingsProvider$ImpuRecordTable;
.super Ljava/lang/Object;
.source "SettingsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImpuRecordTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final TABLE_NAME:Ljava/lang/String; = "impu"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1021
    const-string v0, "content://com.sec.ims.settings/impu"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider$ImpuRecordTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
