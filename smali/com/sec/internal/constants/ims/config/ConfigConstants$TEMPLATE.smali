.class public Lcom/sec/internal/constants/ims/config/ConfigConstants$TEMPLATE;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/config/ConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TEMPLATE"
.end annotation


# static fields
.field public static final USER_AGENT:Ljava/lang/String; = "IM-client/OMA1.0 Samsung/%s-%s Samsung-RCS/%s"

.field public static final USER_AGENT_KOR:Ljava/lang/String; = "TTA-RCS/1.0 %s/%s Device_Type/RCS_Android_Phone %s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
