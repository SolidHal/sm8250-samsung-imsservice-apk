.class public Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/config/ConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVALUE"
.end annotation


# static fields
.field public static final CLIENT_VENDOR:Ljava/lang/String; = "SEC"

.field public static final CLIENT_VERSION_NAME:Ljava/lang/String; = "RCSAndr-"

.field public static final CLIENT_VERSION_VALUE:Ljava/lang/String; = "6.0"

.field public static final DEFAULT_SMS_APP:Ljava/lang/String; = "1"

.field public static final NONDEFAULT_SMS_APP:Ljava/lang/String; = "2"

.field public static final PROVISIONING_VERSION:Ljava/lang/String; = "2.0"

.field public static final PROVISIONING_VERSION_2_0:Ljava/lang/String; = "2.0"

.field public static final PROVISIONING_VERSION_4_0:Ljava/lang/String; = "4.0"

.field public static final PROVISIONING_VERSION_5_0:Ljava/lang/String; = "5.0"

.field public static final RCS_VERSION:Ljava/lang/String; = "6.0"

.field public static final TERMINAL_MODEL:Ljava/lang/String;

.field public static final TERMINAL_SW_VERSION:Ljava/lang/String;

.field public static final TERMINAL_VENDOR:Ljava/lang/String;

.field public static final TOKEN:Ljava/lang/String; = ""

.field public static final VERS:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_VENDOR:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_VENDOR:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
