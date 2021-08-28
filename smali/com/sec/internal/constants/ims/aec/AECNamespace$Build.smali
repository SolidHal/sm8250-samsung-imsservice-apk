.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# static fields
.field public static final ANDROID_OS_VERSION:Ljava/lang/String;

.field public static final TERMINAL_MODEL:Ljava/lang/String;

.field public static final TERMINAL_SW_VERSION:Ljava/lang/String;

.field public static final TERMINAL_VENDOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_MODEL:Ljava/lang/String;

    .line 7
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_SW_VERSION:Ljava/lang/String;

    .line 8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_VENDOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
